clear all;
format long g;
Vel = @(v)97000*v ./(5*v.^2+570000);
%벡터이기 때문에 ./, .^
%The true value is 574.1494

distance = trapezoidal(Vel,40,93,10)
distance = trapezoidal(Vel,40,93,100)
distance = trapezoidal(Vel,40,93,1000)