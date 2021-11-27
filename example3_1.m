%bisection method
clear all
F = @ (x) 8 - 4.5*(x-sin(x)); %anonymous function
a = 2; b = 3; imax = 20; tol = 0.001;
% a:시작 b:끝 imax:iteration 최대 횟수
Fa=F(a); Fb=F(b);
if Fa*Fb > 0
    disp('Error: The function has the same sign at points a and b.')
    %우리의 가정은 solution이 하나 있다는 걸 증명이기 때문에 fa*fb<0이어야 함.
else 
    disp('iteration   a          b     (xNs)Solution  f(xNS)     Tolerance')
    %iteration이 돌면서 값들이 어떻게 쌓이는 지 확인하려고
    %xNs = numerical solution FxNs = numerical solution에서의 함수값
    %toli가 tol보다 작을때까지 ..
    for i = 1:imax
        xNS = (a+b)/2;
        toli = (b-a)/2; %b는 a보다 항상 크다는 게 보장. 현재 tolerance 계산
        FxNS = F(xNS);
        fprintf('%3i %11.6f %11.6f %11.6f %11.6f  %11.6f \n', i, a, b, xNS, FxNS, toli);
        %xNs == true solution 인 경우(거의 확률 제로)
        if FxNS == 0
            fprint('An exact solution x = %11.6f was found', xNS)
            break
        end
        if toli < tol %stop the iterations if the tolerance of the iteration is smaller than the desired tolerance.
            break
        end
        if i == imax % 여러번 돌아도 실패
            fprintf('Solution was not obtained in %i iterations', imax)
            break
        end
        if F(a)*FxNS < 0 % If the left sub-interval contains the solution.
            b = xNS; % solution이 왼쪽에 있으니까 오른쪽 끝 값(b)를 xNs로 설정해줌.
        else 
            a = xNS;
        end
    end
end