%solution of example 10 - 8
clear all;
PendulumDthethaDt = @(t, theta,w) w; %d thets/d t
c=0.16; m=0.5; g=9.81; L=1.2;
PendulumDwDt = @(t,theta,w)-(c/m)*w - (g/L)*sin(theta); %dw/dt

%boundary = 18s
[t,theta,w] = Sys2ODEsRK4(PendulumDthethaDt, PendulumDwDt, 0, 18, 0.1, pi/2, 0);
plot(t,theta)
xlabel('Time(s)')
ylabel('Angle theta(red)')