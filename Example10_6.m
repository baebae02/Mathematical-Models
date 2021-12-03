%solving problem 10-6
%solving First Order ODE with Newton's Method.
clear all

%function. 우변
Chap10Exmp6ODE = @(x,y) - 1.2*y + 7*exp(-0.3*x);

%domain (a,b,stepSize, INI)
a=0; b=2.5; h=0.5; yINI=3;
[x,y] = odeRK4(Chap10Exmp6ODE,a,b,h,yINI);

%h=0.1 --> exact solution 
xp = a:0.1:b;
yp = 70/9*exp(-0.3*xp)-43/9*exp(-1.2*xp);
plot(x,y,'*r',xp,yp,'-k')
yExact=70/9*exp(-0.3*x)-43/9*exp(-1.2*x)
error=yExact-y
