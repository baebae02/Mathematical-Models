%뉴턴 예제. x,y를 이용해서 x가 3일때의 값을 구하라 !
clear all;
x = [1 2 4 5 7];
y = [52 5 -5 -40 10];
format long;
Yinterpolated = NewtonsINT(x,y,3)

%plotting the Newton polynomial
xx=1:0.1:7;
for i = 1:length(xx)
    yy(i)=NewtonsINT(x,y,xx(i));
end
clf;
figure(1);
plot(x,y,'ro');
hold on;
plot(xx,yy,'k');
