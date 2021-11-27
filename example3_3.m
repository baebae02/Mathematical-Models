clear all;
format long;

FunExample2 = @(x) 8 - 4.5*(x-sin(x));
xSolution = SecantRoot(FunExample2, 2, 3, 0.0001, 10)