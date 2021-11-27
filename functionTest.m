%primary function
function [z1, z2] = my_funx(x,y)
    z1 = x.^y;
    z2 = add(x,y);
end
%subfunction
function r = add(x,y)
    r = x+y;
end

%     for v = 1:5
%         i^2;
%     end
%     %for문. 배열이면 column 을 하나씩 리턴
