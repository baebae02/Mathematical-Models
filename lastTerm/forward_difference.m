function [d1] = forward_diff_3_points(f, x, h)
% TODO: Remove the following line and fill in the correct code.
	d1 = (-3.*f(x)+4.*f(x+h)-f(x+2*h))./(2*h);
end