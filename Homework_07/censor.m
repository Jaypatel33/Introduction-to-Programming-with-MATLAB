function out = censor(in, c1)

    [n, m] = size(in);
    out = {};
    id = 1;
    for i = 1:1:n
        for j = 1:1:m
            if sum(sum(strfind(in{i,j},c1))) == 0
                out{id} = in{i,j};
                id = id + 1;
            end
        end
    end
end