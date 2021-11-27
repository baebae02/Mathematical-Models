clear all;
clf;

f1 = @(x,y)y - (1/2)*(exp(x/2) + exp(-x/2));
f2 = @(x,y)9*x.^2 + 25*y.^2 - 225;

[x,y] = meshgrid(-6:0.2:6, -4:0.2:6);
z1 = reshape(f1(x(:), y(:)), size(x));
z2 = reshape(f2(x(:), y(:)), size(x));

subplot(3,2,1);
surf(x,y,z1);
hold on;
surf([-6,6; -6,6], [-4,-4;6,6], [0,0;0,0]);

subplot(3,2,2);
surf(x,y,z2);
hold on;
surf([-6,6;-6,6], [-4,-4;6,6;], [0,0;0,0]);

subplot(3,2,[3,4,5,6]);
surf(x,y,z1);
hold on;
surf(x,y,z2);
hold on;
surf([-6,6;-6,6], [-4,-4;6,6], [0,0;0,0]);
caxis([-10,10]);
zlim([-10,10]);