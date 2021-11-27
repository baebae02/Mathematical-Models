%equations with multiple solutions
clear all
F = @ (x) cos(x)*cosh(x)+1;
Inc = 0.2; %0.2씩 증가
i=1;
KnLa=0; %시작은 0
KnLb = KnLa + Inc;
while KnLb <= 11.2
    if F(KnLa)*F(KnLb) < 0
        Roots(i) = fzero(F, [KnLa, KnLb]);
        i = i+1;
    end
    KnLa = KnLb;
    KnLb = KnLa + Inc;
end
Roots