%Example 10-9 . 1-6이랑 같음
clear all;
DiffEqExp8 = @(x,y) - 1.2*y + 7*exp(-0.3*x);
tspan = [0:0.5:2.5];
yIni=3;
[x,y] = ode45(DiffEqExp8,tspan,yIni)
xx=0:0.1:2.5;
yExact = 70/9*exp(-0.3*xx)-43/9*exp(-1.2*xx)
clf
plot(tspan,y,'r*')
hold on
plot(xx,yExact, 'b-')
error=yExact-y


%파란색이 exact solution
%빨간색이 그린거