function [H] = hulk(v)
    [n,m] = size(v);
    H = zeros(m,3);
    for i = 1:1:m
        H(i,1) = v(1,i).^1;
        H(i,2) = v(1,i).^2;
        H(i,3) = v(1,i).^3;
    end
end