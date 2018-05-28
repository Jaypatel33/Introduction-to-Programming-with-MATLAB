function out = halfsum(A)

    [n,m] = size(A);
    out = 0;
    for i = 1:1:n
        for j = 1:1:m
            if (i+j) > n
                out = out + A(i,j);
            end
        end
    end

end
