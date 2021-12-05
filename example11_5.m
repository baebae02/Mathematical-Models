clear all;
a=0; b=1;
N=20; h=(b-a)/N;
x=a:h:b;
hDenom = 3+2*h;

A_diag =(4+h^2);
y(1)=1;
A=eye(N-2, N-2)*A_diag;

%matrix 만들기
A(N-1,N-1) = A_diag - 8/hDenom;
for i=1:N-2
    A(i,i+1)=-2;
    A(i+1,i)=-2;
end
A(N-1, N-2) =2/hDenom -2;
%
%column vector 만들기
c(1)=2+h^2*exp(-0.2*x(2));
c(2:N-1)=h^2*exp(-0.2*x(3:N));
% 

y(2:N)=Tridiagonal(a,c); %Thoma's algorithm
y(N+1)=-1*y(N-1)/hDenom + 4*y(N)/hDenom;
yExact = -0.2108.*exp(x./sqrt(2))+0.1238.*exp(-x./sqrt(2))+exp(-0.2.*x)./0.92