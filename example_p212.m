%standard에 대한 예제
clear all;
%구하고자 하는 것 : 5개의 점을 지나는 4차 다항식. 
x = [1, 4, 7, 10, 13];
y = [2, 6, 4, 8, 10];

power = [4,3,2,1,0]; 
A=[x(1).^power;
    x(2).^power;
    x(3).^power;
    x(4).^power;
    x(5).^power];
%x(1)의 4승, x(2)의 3승 ...5개의 row
b=y';
c = A\b;
plot(x,y,'ro');
hold on;
xx=1:0.1:13;
%flipplr-> power가 내림차순이라 역으로 바꿔준거
plot(xx,polyval(fliplr(c),xx),'b');
