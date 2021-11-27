clear all;
format long;

A = [8, 2, 3;
    2, 5, 1;
    -3, 1, 6];

b = [51; 23; 20];

%  [xNS, nIter] = OrthoProj(A, b, 0.001, 30);
% % 
%  xNS
%  nIter

% 
[xNS, nIter] = MixedGaussSeidel(A, b,1, 0.001, 30);
xNS
nIter