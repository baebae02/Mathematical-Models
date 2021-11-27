
% (input parameters)
% A, b: linear system
% err: termination criteria
% imax: maximum interations
% (output parameters)
% xNS: numerical solution (NaN if no solution is found.)
% nIter: number of iterations taken to find the solution
%        (NaN if no solution is found.)
%
% Solve the linear system "Ax=b" by projecting the current solution
% onto the current hyper-plane orthogonally.
% Specifically, at the i-th iteration,
%     For each of j-th equation "dot(a_j, x) = b_j" which is a hyper-plane,
%      (a_j: j-th row of A, b_j: j-th element of b)
%      ("dot(x,y)" denotes the dot product of the vectors x and y.)
%      project the current solution
%      onto the hyper-plane orthogonally to obtain a new solution.
%
% * Note that the formula for projecting a point x
%   onto the hyper-plane "dot(a_j, x) = b_j" is
%
%   x + (b_j - dot(a_j, x) ) * a_j^T / ||a_j||
%
%   (v^T is the transpose of v and ||v|| is the 2-norm of v)
% * Also note that all the n elements of the solution may change
%   after each projection, while only one element changes
%   in Jacobi and Gauss-Seidel methods.
%
% - Set the initial value to the zero vector.
% - Use the estimated relative error of 2-norm as the termination criteria.
%   ||x_new - x_old|| / ||x_new|| < err
% - Do the error check after projecting onto all n equations.
%  (not after each projection)

function [xNS,nIter] = OrthoProj(A, b, err, imax)
[R,C] = size(A); %Row Column
xNS = zeros(R,1);
for i = 1:imax
    for j = 1:R
      x_old = xNS;
      v = x_old + (b(j) - (A(j,:)* x_old)) * A(j,:)' / (norm(A(j,:) * norm(A(j,:))));
      xNS = v + (b(j) - (A(j,:)* v)) * A(j,:)' / (norm(A(j,:) * norm(A(j,:))))
    end
    
    error = norm(xNS - x_old) / norm(xNS);
    if (error < err)
            fprintf("Solution find in %d", i);
            nIter = i;
            break
    end
end
if i == imax
    fprintf("number of iterations over. %d", i);
    xNS = nan;
    nIter = nan;
end

