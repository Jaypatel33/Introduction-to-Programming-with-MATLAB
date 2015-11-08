function [out] = identity(n)
    out = zeros(n, n);
    for i = 1:1:n
        for j = 1:1:n
            if i == j
                out(i,j) = 1;
            end
        end
    end
end