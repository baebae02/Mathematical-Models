function Yint = NewtonsINT(x,y,Xint)

n=length(x);
a(1)=y(1);
for i = 1:n-1
    divDIF(i,1)=(y(i+1)-y(i))/(x(i+1)-x(i));
    %divDIF(a,b) -> a는 몇번째 divDIF이냐. b는 a에서 몇번째 인덱스를 가르키냐.
end
for j = 2:n-1
    for i = 1:n-j
        divDIF(i,j) = (divDIF(i+1,j-1)-divDIF(i,j-1))/(x(i+j)-x(i));
    end
end
for j=2:n
    a(j)=divDIF(1,j-1);
end
Yint=a(1);
xn=1;
for k=2:n
    xn=xn*(Xint-x(k-1));
    Yint = Yint + a(k)*xn;
end



