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
%      delta*x
%
%An error occurs if the maximum number of iterations is reached
%before finding a solution.
%

function [xb, nIter] = secant_modified(f, x0, delta, err, imax);

for i = 1:imax
%     xr = x0; %x_i-2
%     slope = (f(xr + delta*xr) - f(xr)) / delta;
%     xNS = xr - f(xr)/slope;
%     %delta = xNS - xr;
%     %직선이 x축과 만나는 점 구하기
    %x0 xa xb
    xa = x0*delta +x0
    xb = x0 - (delta*x0*f(x0))/ (f(xa)-f(x0))
    if abs((xb - xa)/xa) < err
        nIter = i;
        break
    end
    x0 = xb;
end
if i == imax
    nIter = NaN;
    xb = NaN;
end
