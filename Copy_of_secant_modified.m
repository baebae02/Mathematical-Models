%(input parameters)
%f :function for the equation "f(x)=0"
%x0 :initial guess
%delta :delta for modified secant method (to be described below)
%err :termination criteria for the estimated relative error(3.9) on p.60
%imax :maximum number of iterations
%
%(return values)
%xNS :numerical solution. NaN if an error has occured.
%nlter :number of iterations to compute the solution. NaN if an error has
%occured.
%
%The modified secant method approximates
%the slope of the tangent line at x as follows; x에서의 접선 
%
%f(x+delta*x)-f(x)
%-----------------
%      delta
%
%An error occurs if the maximum number of iterations is reached
%before finding a solution.
%

function [xNS, nIter] = secant_modified(f, x0, delta, err, imax);
xr = 0;
xNS = x0;
for i = 1:imax
    %X_{i-2} == X0
    %X_{i-1} == xb
    %X_i == xi
    i
    xr = xNS;
    xNS = xNS - f(xNS)/((f(x0+delta*x0) - f(x0))/delta); %직선이 x축과 만나는 점 구하기
    if abs((xNS - xr)/xr) < err
%         xNS = xb;
        nIter = i;
        break
    end
%     x0 = xb; %X_{i-2} <- X_{i-1} shift
%     xb = xi; %X_{i-1} <- X_i
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n', imax)
    nIter = NaN;
    xNS = NaN;
end
