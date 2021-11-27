function [L,U] = LUdecompCrout(A)
% The function decompose the matrix A into a lower triangular matrix L and 
% upper triangular matrix U, using Crout's method, such that A = LU.
% Input variables:
% A the matrix of coefficients.
% b Right-hand-side column vector of constants.
% Output variable:
% L Lower triangular matrix.
% U Upper triangular matrix.

[R,C] = size(A);
for i = 1:R
    L(i,1)=A(i,1); % L 가장 왼쪽 column 복사
    U(i,i)=1; % 대각선 값들 1로 설정
end

for j=2:R
    U(1,j)=A(1,j)/L(1,1); % U의 1행 채우기
end
for i=2:R % 위에서부터 아래로
    for j=2:i %왼쪽에서부터 오른쪽으로 
        L(i,j)=A(i,j)-L(i,1:j-1)*U(1:j-1,j); % L 채우고
    end
    for j=i + 1:R 
        U(i,j) = (A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i); % U 채우고
    end
end
for