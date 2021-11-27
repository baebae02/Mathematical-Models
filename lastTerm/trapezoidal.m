function I = trapezoidal(Fun,a,b,N)
%using the Composite Trapezoidal Method.
%Input Variables:
%Fun Name for the function to be integrated.
%(Fun is assumed to be written with element-by-element calculations.
%a Lower limit of integration.
%b Upper limit of integration.
%n Number of subintervals.
%Output Variable:
%I Value of the integral.

h=(b-a)/N;
x=a:h:b;
F=Fun(x);
I=h*(F(1)+F(N+1))/2+h*sum(F(2:N));