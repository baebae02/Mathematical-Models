function dx = derivative(x,y)
%derivative caculates the derivative of a function that is given by a set
%of points. The derivatives at the first and alst points are caculated by
%using the forward and backward finite difference formula, respectively.
%The derivative at all the other points is caculated by the central finite
%difference formula. 
%Input variables:
%x A vector with the coordinates x of the data points.
%y A vector with the coordinates y of the data points.
%Output variable:
%dx A vector with the value of the derivative at each point. 
n = length(x);
dx(1) = (y(2)-y(1))/(x(2) - x(1));
for i = 2:n-1
    dx(i) = (y(i+1)-y(i-1))/(x(i+1)-x(i-1));
end
dx(n)=(y(n)-y(n-1))/(x(n)-x(n-1));
