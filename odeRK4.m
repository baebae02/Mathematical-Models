function [x,y]=odeRK4(ODE,a,b,h,yIni)
%oreRK4 solves a first order initial value ODE using Runge-Kutta fourth
%order method.
%Input variables:
%ODE Name for the function that caculates dy/dx.
%a  The first value of x
%b  The last value of x
%h  Step size.
%yIni  The value of the solution y at the first point(initial value).
%Output variables:
%x A vector with the x coordinate of the solution points.
%y A vector with the y coordinate of the solution points.

x(1)=a; y(1)=yIni;
n=(b-a)/h;
for i=1:n
    x(i+1)=x(i)+h;
    K1=ODE(x(i),y(i)); % = f(x_i,y_i)
    xhalf = x(i)+h/2;
    yK1=y(i)+K1*h/2; 
    K2 = ODE(xhalf,yK1); % = f(x_i+h/2,y_i+(K1)h/2)
    yK2 = y(i)+K2*h/2;
    K3 = ODE(xhalf,yK2);
    yK3 = y(i)+K3*h;
    K4 = ODE(x(i+1),yK3);
    y(i+1)=y(i)+(K1+2*K2+2*K3+K4)*h/6; %1:2:1
end


   
   