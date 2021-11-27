function Yint = LagrangeINT(x,y,Xint)

%LagrangeINT fits a Lagrange polynominal to a set of given points
n = length(x); %data point 개수
for i = 1:n
    L(i)=1; %1부터 n까지 라그랑주 승수
    for j = 1:n
        if j~=i
            L(i)=L(i)*(Xint-x(j))/(x(i)-x(j));
        end
    end
end
Yint = sum(y.*L);
%Yint = y*L';