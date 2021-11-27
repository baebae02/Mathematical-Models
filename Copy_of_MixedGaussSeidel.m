% (input parameters)
% A, b: linear system
% omega: mixing ratio
% err: termination criteria
% imax: maximum iterations
% (output parameters)
% xNS: numerical solution (NaN if no solution is found.)
% nIter: number of iterations taken to find the solution
%        (NaN if no solution is found.)
%
% Implement the modified version of the Gauss-Seidel method
% which computes the new solution by mixing the old solution
% with the one found by the Gauss-Seidel method.
% Specifically, compute the j-th element of x_new as
%
% x_new(j) = (1-omega)*x_old(j) + omega*x_GS(j)
%
% where x_GS is the solution computed by Gauss-Seidel method 
% from x_old & x_new.
%
% - Set the initial value to the zero vector.
% - Use the estimated relative error of 2-norm as the termination criteria.
%   ||x_new - x_old|| / ||x_new|| < err
%
function [xNS, nIter] = MixedGaussSeidel(A, b, omega, err, imax)
normVal= inf;
[R , C] = size(A); %Row Column
xNS = zeros(R,1);
n=size(xNS,1);
itr = 0;
while normVal>err
    x_old=xNS;
    if itr == imax
        fprintf('Solution was not obtained in %i iterations.\n', imax);
        nIter = NaN;
        xNS = NaN;
        break
    end
    for i=1:n
        sigma=0;
        for j=1:i-1
                sigma=sigma+A(i,j)*xNS(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        xGS(i)=(1/A(i,i))*(b(i)-sigma);
        xNS(i) = (1-omega)* x_old(i) + omega * xGS(i)
    end
    itr=itr+1;
    normVal=norm(xNS - x_old) / norm(xNS);
    
end
%%

fprintf('Solution of the system is : \n%f\n%f\n%f\n%f in %d iterations',xNS,itr);
nIter = i;
       
