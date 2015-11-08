function indices = saddle(M)
    indices = [];
    [n,m] = size(M);
    for j = 1:1:m
        for i = 1:1:n
            num = M(i,j);
            add_indices = 1;
            for kk = 1:1:m
                if num < M(i,kk)
                    add_indices = 0;
                    break;
                end
            end
            if add_indices == 0
                continue;
            end
            for kk = 1:1:n
                if num > M(kk,j)
                    add_indices = 0;
                    break;
                end
            end
            if add_indices == 1
                indices = [indices; i,j];
            end
        end
    end

end