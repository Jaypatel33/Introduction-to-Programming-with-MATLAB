function out = replace(in, c1, c2)

    [n,m] = size(in);
    out = cell(n,m);
    for i = 1:1:n
        for j = 1:1:m
            str = char(in{i,j});
            K = strfind(str, c1);
            if sum(size(K) == [0 0]) == 2
                out{i,j} = str;
                continue
            end
            concat_start = 1;
            new_string = '';
            for k = 1:1:length(K)
                if concat_start == K(k)
                    new_string = [new_string, c2];
                    concat_start = concat_start + length(c1);
                    continue;
                end
                temp_string = [str(concat_start:1:K(k)-1), c2];
                new_string = [new_string, temp_string];
                concat_start = K(k)+ length(c1);
            end
            new_string = [new_string, str(concat_start:end)];
            out{i,j} = new_string;
        end
    end

end