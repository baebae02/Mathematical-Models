% clear all;
% format long;
% 
% FunExample2 = @(x) 8 - 4.5*(x-sin(x));
% FunDerExample2 = @(x) -4.5 + 4.5*cos(x);
% 
% % xSolution = NewtonRoot (FunExample2, FunDerExample2, 2, 1e-4, 10)
%  
% xSolution2 = SecantRoot(FunExample2, 2, 3, 0.0001,10);
% xSolution2 %  2.430465726588755
% 
% xSolution3 = nth_Root(2,3,0.0001,20);
% xSolution3 % 1.259921049895395
% 
% [xSolution4, xSolution5] = bisection_tolerance(FunExample2,0,20,0.0001);
% xSolution4 % 2.430572509765625
% xSolution5 % 1.525878906250000e-04
% % % 
% [xSolution6, xSolution7]=secant_modified(FunExample2, 2, 1, 0.0001, 20);
% xSolution6 % 2.430262719889920
% xSolution7 % 12
% 
% xNS = nth_Root(27, 3, 0.001, 50)
% 
% clear all;
% format long;
% 
 f = @(x) x^(3) - 27;
 [xNS, nIter] = secant_modified(f, 27, 0.00001, 0.001, 50);
% 
%F = @(x) 8-4.5*(x-sin(x));
% [xNS, nIter] = secant_modified(F, 3, 0.0001, 0.0001, 50);
% 
 xNS
 nIter


% clear all;
% format long;
% 
% f = @ (x) 8-4.5*(x-sin(x));
% [xNS, tol] = bisection_tolerance(f, 2, 3, 0.001);
% 
% xNS
% tol
