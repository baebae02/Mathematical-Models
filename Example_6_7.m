% quadratic spline
clear all;
x1=8;   x2=11;  x3=15;  x4=18;  x5=22;
y1=5;   y2=9;   y3=10;  y4=8;   y5=7;
A = [x1    1    0    0    0    0    0    0    0    0    0;
     x2    1    0    0    0    0    0    0    0    0    0;
      0    0   x2^2 x2    1    0    0    0    0    0    0;
      0    0   x3^2 x3    1    0    0    0    0    0    0;
      0    0    0    0    0  x3^2  x3    1    0    0    0;
      0    0    0    0    0  x4^2  x4    1    0    0    0;
      0    0    0    0    0    0    0    0  x4^2  x4    1;
      0    0    0    0    0    0    0    0  x5^2  x5    1;
      1    0  -2*x2 -1    0    0    0    0    0    0    0;
      0    0   2*x3  1    0 -2*x3  -1    0    0    0    0;
      0    0    0    0    0  2*x4   1    0 -2*x4  -1    0];
B = [y1;y2;y2;y3;y3;y4;y4;y5;0;0;0];

c = (A\B)'

b1=c(1); c1=c(2);
a2=c(3); b2=c(4); c2=c(5);
a3=c(6); b3=c(7); c3=c(8);
a4=c(9); b4=c(10);c4=c(11);

% plotting the quadratic spline
plot([x1,x2,x3,x4,x5],[y1,y2,y3,y4,y5],'r*');
hold on;
x=x1:0.1:x2;
plot(x,x*b1+c1,'k');
hold on;
x=x2:0.1:x3;
plot(x,a2*x.^2+b2*x+c2,'k');
hold on;
x=x3:0.1:x4;
plot(x,a3*x.^2+b3*x+c3,'k');
hold on;
x=x4:0.1:x5;
plot(x,a4*x.^2+b4*x+c4,'k');