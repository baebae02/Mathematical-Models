function Xs = NewtonRoot(Fun, FunDer, Xest, Err, imax)
% NewtonRoot finds the root of Fun=0 near the point Xest using Newton's
% method
% Input Variables:
% Fun    Handle of a user-defined function that caculates Fun for a given x.
% FunDer Handle of a user-defined function that caculates the derivative of
%        Fun for a given x.

% Xest   Initial esimate of the solution
% Err    Maximum error
% imax   Maximum number of iterations
% Output variable:
% Xs     Solution

for i = 1:imax
    % Xest = x_{i}
    % Xi = x_{i+1}
    i
    Xi = Xest - Fun(Xest)/FunDer(Xest);
    if abs((Xi - Xest)/Xest) < Err
        Xs = Xi;
        break
    end
    Xest = Xi;
end
if i == imax
    fprintf('Solution was not obtained in %i iterations .\n', imax)
    Xs = ('No answer');
end