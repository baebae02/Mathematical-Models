function x = Gauss(a,b)
%The function solve a system of linear equations [a][x] = [b] using the
%Gauss elimination method.
%Input variables:
%a The matrix of coefficients/
%b Right-hand-side column vector of constants.
%Output variable:
%x A column vector with the solution.

ab = [a,b]; %builds up an augmented matrix [A|b]
[R,C] = size(ab); %R=n, C=n+1
for j = 1:R -1 %for each Column
    %R-1인 이유. row exchange 없는 gauss elimination임. 그래서 자동으로 마지막 줄은 완성
    for i = j+1:R
        %elimination: makes (i,j)-th element zero
        ab(i,j:C) = ab(i,j:C) - ab(i,j)/ab(j,j)*ab(j,j:C);
        %ab(i,:) = ab(i,:) - ab(i,j)/ab(j,j)*ab(j,:)
    end
end

%back subtitution
x = zeros(R,1); %R X 1행렬 0으로 초기화.
x(R) = ab(R,C)/ab(R,R); %맨 밑줄에 추가.
for i = R-1:-1:1 %R-1 부터 1까지 -1씩
    x(i)=(ab(i,C)-ab(i,i+1:R)*x(i+1:R))/ab(i,i);
end
