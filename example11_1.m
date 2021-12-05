clear all
a=0; b=0.1; TINI=473; wINI1=-1000; h=0.001;
[x,T1,w] = Sys2ODEsRK2(@odeChap11Exmp1dTdx, @odeChap11Exmp1dwdx,a,b,h,TINI, wINI1);
n=length(x);
fprintf('The temperature at x=0.1 is %5.3f, for initial value of dt/dx=%4.1f\n', T1(n),wINI1)
wINI2=-3500;
[x,T2,w]=Sys2ODEsRK2(@odeChap11Exmp1dTdx, @odeChap11Exmp1dwdx,a,b,h,TINI,wINI2);
fprintf('The temperature at x=0.1 is %5.3f, for initial value of dt/dx=%4.1f\n', T2(n), wINI2)
wINI3=wINI1+(293-T1(n))*(wINI2-wINI1)/(T2(n)-T1(n));
[x,T3,w]=Sys2ODEsRK2(@odeChap11Exmp1dTdx, @odeChap11Exmp1dwdx,a,b,h,TINI,wINI3);
fprintf('The temperature at x=0.1 is %5.3f, for initial value of dt/dx=%4.1f\n', T3(n), wINI3)
plot(x,T1,'-k',x,T2,'-k',x,T3,'-r')
xlabel('Distance(m)'); ylabel('Temperature(K)')