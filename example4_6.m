%This script file solves a system of equations by using the LU Crout's
%decomposition method.
clear all;
format short;
A = [9 -4 -2 0;
    -4 17 -6 -3;
    -2 -6 14 -6;
    0 -3 -6 11];
b = [24; -16; 0; 18];
[L, U] = LUdecompCrout(A);
y = ForwardSub(L,b);
i = BackwardSub(U,y);


