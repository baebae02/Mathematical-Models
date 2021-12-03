%solving Example 10-3
clear all
Chap10Exmp10DE = @(x,y)-1.2*y + 7*exp(-0.3*x);

a=0; b=2.5; h=0.5; yINI=3;
[x,y]=odeModEuler(Chap10Exmp10DE,a,b,h,yINI);
xp=a:0.1:b;
yp=70/9*exp(-0.3*xp)-43/9*exp(-1.2*xp);
figure(2);
clf;
plot(x,y,'*b',xp,yp)
hold on;
xlabel('x');ylabel('y')