function Xs = SecantRoot(Fun, Xa, Xb, Err, imax)

for i = 1:imax
    %X_{i-2} == Xa
    %X_{i-1} == Xb
    %X_i == Xi
    i
    FunXb = Fun(Xb);
    Xi = Xb - FunXb * (Xa-Xb)/(Fun(Xa)-FunXb); %직선이 x축과 만나는 점 구하기
    if abs((Xi - Xb)/Xb) < Err
        Xs = Xi;
        break
    end
    Xa = Xb; %X_{i-2} <- X_{i-2} shift
    Xb = Xi; %X_{i-1} <- X_i
end
if i == imax
    fprintf('Solution was not obtained in %i iterations.\n', imax)
    Xs = ('No answer');
end