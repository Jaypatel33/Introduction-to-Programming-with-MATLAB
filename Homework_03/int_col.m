function [out] = int_col(n)
    out = zeros(n,1);
    out(1,1) = n;
    for i = 2:1:n
        out(i,1) = i-1;
    end

end