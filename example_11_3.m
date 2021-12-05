clear all;
hc = 40; P=0.016; k=240; Ac=1.6E-5;
h=0.02; Ts=293;
x=0:0.02:0.1;
beta = hc*P/(k*Ac);
aDia = -(2+h^2*beta);
cele = -h^2*beta*Ts;
T(1)=473; T(6)=293;
a=eye(4,4)*aDia;
for i=1:3
    a(i,i+1)=1;
    a(i+1,1)=1;
end

c=[cele-T(1); cele; cele; cele-T(6)];
T(2:5)=a\c;
fprintf('The temperature at the grid points are \n');
disp(T);
plot(x,T,'*r')
xlabel('Distance (m)'); ylabel('Temperature (K)')