%solving First Order ODE with Euler's implicit Method.
clear all
a = 0; b=0.5; h=0.002; %h=stepSize
N=(b-a)/h;
n(1)=2000; t(1)=a; %초기값 2000
for i=1:N
    t(i+1)=t(i)+h; %t가 x에 해당하는 거임
    x=n(i); %initial value for x=n(i+1)
%Newton's method starts.
    for j = 1:20 %편의를 위해 n_i+1을 x로 함. 
        num = x+0.800*x^(3/2)*h-10.0*n(1)*(1-exp(-3*t(i+1)))*h-n(i);
        denom = 1+0.800*1.5*x^(1/2)*h; %g'(x_i)
        xnew = x-num/denom; %x_{i+1} = x_i - g(x_i)/g'(x_i)
        if abs((xnew-x)/x)<0.0001
            break
        else
            x=xnew;
        end
    end
    if j==20
        fprintf('Numerical Solution could not be calculated at t=%g s',t(i))
        break
    end
    %Newton's Method ends.
    n(i+1)=xnew;
end
plot(t,n)
axis([0 0.5 0 2000]),xlabel('t (s)'),ylabel('n')