% Two-Points Backward Difference Formula
function [d1] = backward_diff_2_points(f, x, h)
% TODO: Remove the following line and fill in the correct code.
	d1 = (f(x)-f(x-h))./h;
end