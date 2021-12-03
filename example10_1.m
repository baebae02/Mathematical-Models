%solving problem 10-1
clear all

%function. 우변
Chap10Exmp10DE = @(x,y) - 1.2*y + 7*exp(-0.3*x);

%domain (a,b,stepSize, INI)
a=0; b=2.5; h=0.5; yINI=3;
[x,y] = odeEULER(Chap10Exmp10DE,a,b,h,yINI);

%h=0.1 --> exact solution 
xp = a:0.1:b;
yp = 70/9*exp(-0.3*xp)-43/9*exp(-1.2*xp)
clf;
plot(x,y,'--b',xp,yp)
xlabel('x'); ylabel('y')

%대부분 오른쪽으로 갈수록 오차가 커짐.
%h를 0.5> 0.1 > 0.01 로 오차가 줄어듬.