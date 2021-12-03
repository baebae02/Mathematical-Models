function [x,y]=odeEULER(ODE,a,b,h,yINI)

%odeEULER solves a first order initial value ODE using Euler's explicit
%method.

%Input variables:
%ODE Name of a function file that calculate dy/dx.
%a   The first value of x.
%b   The last value of x.
%h   Step size.
%yINI  The value of the solution y at the first point (initial value.)

%Output variable:
%x   A vector with the x coordinate of the solution points.
%y   A vector with the y coordinate of the solution points.

x(1) = a; y(1) = yINI;
N = (b-a)/h; %subinterval
for i = 1:N
    x(i+1) = x(i)+h;
    y(i+1) = y(i) + ODE(x(i),y(i))*h;
end