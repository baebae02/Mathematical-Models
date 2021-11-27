function x = GaussPivot(a,b)
%The function solves a system of linear equations ax = b using the Gauss
%elimination method with pivoting

%Input variables:
%a The matrix of coefficients.
% b Right-hand-side column vector of constants.
% Output variable:
% x A column vector with the solution.

ab = [a.b];
[R,C] = size(ab);
for j = i:R -1
    %Pivoting section starts
    if ab(j,j) = 0 %if the pivot is zero
        for k = j + 1:R % the rows below the fivot row
            if ab(k,j) ~= 0 %ab(k,j) is nonzero closest to j-th row
                abTemp = ab(j,:);
                ab(j,:)=ab(k,:);
                ab(k,:)=abTemp;
                break
            end
        end
    end
    %Pivoting section ends

    for i = j+1:R
        ab*i,j:C)=ab(i,j:C) -ab(i,j)/ab(j,j)*ab(j,j:C);
    end
end
x = zeros(R,1);
x(R) = ab(R,C)/ab(R,R);
for i = R - 1:-1:1
    x(i) = (ab(i,C) - ab(i,i+1:R)*x(i+1:R))/ab(i,i);
end
