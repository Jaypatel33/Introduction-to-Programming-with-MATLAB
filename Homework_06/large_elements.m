function out = large_elements(X)
    
    out = [ ];
    [n,m] = size(X);
    for i = 1:1:n
        for j = 1:1:m
            if i + j < X(i,j)
               out = [out; i,j];
            end
        end
    end

end