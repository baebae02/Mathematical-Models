%solving Chapter 10 example 7
clear all;

odeExample7dydx = @(x,y,z) (-y+z)*exp(1-x)+0.5*y;
odeExample7dzdx = @(x,y,z) y-z^2;

a=0;b=3; yINI=3; zINI=0.2; h=0.1;
%y와 z가 원하는 값. 
[x,y,z]= Sys2ODEsRK2(odeExample7dydx, odeExample7dzdx, a,b,h,yINI,zINI);
%Data from part (a)
%h=0.25, explicit Euler
xa = [ 0 0.25 0.5 0.75];
ya = [3 1.472 1.374 1.427];
za = [0.2 0.94 1.087 1.135];

%Data from part (b)
%h=0.25, 2nd order RK (modified Euler)
xb = [0 0.25 0.5];
yb = [3 2.187 1.903];
zb = [0.2 0.6436 0.9230];
plot(x,y,'-k',x,z,'-r',xa,ya,'*k',xa,za,'*r',xb,yb,'ok',xb,zb,'or')
axis([0 3 0 4])
% *는 explicit Euler. order나 h 모두 err 큼