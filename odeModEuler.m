%modified Euler method
%Input variables:
%ODE Name of a function file that calculates dy/dx.
%a  The first value of x
%b  The last value of x
%h  Step size.
%yINI  The value of the solution y at the first point(initial value)
%Output variable:
%x  A vector with the x coordinate of the solution points.
%y  A vector with the y coordinate of the solution points.
function [x,y] = odeModEuler(ODE,a,b,h,yINI)

x(1)=a; y(1)=yINI;
N=(b-a)/h;
for i = 1:N
    x(i+1)=x(i)+h;
    SlopeEu = ODE(x(i),y(i)); %f(x_i,y_i) 
    yEu = y(i) + SlopeEu*h; %y_{i+1}^{Eu} 오일러로 구한 y_(i+1)
    SlopeEnd = ODE(x(i+1),yEu); %f(x_{i+1}, y_{i+1}^{Eu})
    y(i+1)=y(i)+(SlopeEu+SlopeEnd)*h/2; %평균을 내서 구한 걸 slope로 사용
end