%라그랑주 예제. x,y를 이용해서 x가 3일때의 값을 구하라 !
clear all;
x = [1 2 4 5 7];
y = [52 5 -5 -40 10];
format long;
Yinterpolated = LagrangeINT(x,y,3)

%plotting the Lagrange polynomial
xx=1:0.1:7;
for i = 1:length(xx)
    yy(i)=LagrangeINT(x,y,xx(i));
end
clf;
figure(1);
plot(x,y,'ro');
hold on;
plot(xx,yy,'k');
