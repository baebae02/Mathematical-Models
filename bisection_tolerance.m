%(input parameters)
%f:function for the equation "f(x)=0"
%a,b: initial interval (a<b)
%err: termination criteria (tolerance in solution) (3.7) on p.60
%
%(return values)
%xNS: numerical solution. NaN if an error has occured.
%tol: tolerance of the computed solution. NaN if an error has occured.
%
%In this function, the number of iterations (nlter) required to satisfy
%the termination criteria is computed first.
%(Figure out yourself how to compute it).
%And then the bisection method is performed up to "nlter" iterations.
%
%An error occurs if the interval is not guaranteed to contain a solution.
%

function [xNS,tol] = bisection_tolerance(f,a,b,err)
errnow = inf;
nIter = 0;
a2 = a;
b2 = b;
while errnow > err
    xNS = (a2 +b2)/2;
    errnow = abs((b2-a2)/2);
    FxNS = f(xNS);
    if f(a)*FxNS < 0 
        b2 = xNS;
    else 
        a2 = xNS;
    end
    nIter = nIter + 1;
end

Fa=f(a); Fb=f(b);
if Fa*Fb > 0
    xNS = NaN;
    tol = NaN;
else 
    %iteration이 돌면서 값들이 어떻게 쌓이는 지 확인하려고
    %xNs = numerical solution FxNs = numerical solution에서의 함수값
    %toli가 tol보다 작을때까지 ..
    for i = 1:nIter
        xNS = (a+b)/2;
        tol = abs((b-a)/2); %b는 a보다 항상 크다는 게 보장. 현재 tolerance 계산
        FxNS = f(xNS);
        %xNs == true solution 인 경우(거의 확률 제로)
        if FxNS == 0
            break
        end
        if f(a)*FxNS < 0 % If the left sub-interval contains the solution
            b = xNS; % solution이 왼쪽에 있으니까 오른쪽 끝 값(b)를 xNs로 설정해줌.
        else 
            a = xNS;
        end
    end
end