
%compute y such that xNS^n=p using Newton's method (p>0, n>0)
%Refer to Problem 3.17 on p.90
%Use the termination criteria(3.9) -- estimated relative error
%The starting solution should be the same as "p".
%
%err: termination criteria
%imax: maximum number of iterations
%
%When an error has occured, "NaN" should be assigned to xNS.
%There are three errors.
%-non-positive "p"
%-non-positive "n"
%-The maximum number of iterations has been reached.

function [xNs] = nth_root(p,n,err,imax)

    if p < 0
        fprintf('non-positive "p"');
        xNs = NaN;
    elseif n < 0
        fprintf('non-positive "n"');
        xNs = NaN;
    end
    
    Xest = p;
    for i = 1:imax
        % Xest = x_{i}
        % Xi = x_{i+1}
        %Xi = Xest - Fun(Xest)/FunDer(Xest);
        Xi = Xest - (Xest.^n - p)/(n*(Xest.^(n-1)));
        i

        if abs((Xi - Xest)/Xest) < err
            xNs = Xi;
            break
        end
        Xest = Xi;
    end

    if i == imax
        fprintf('The maximum number of iterations has been reached.');
        xNs = NaN;
    end
end