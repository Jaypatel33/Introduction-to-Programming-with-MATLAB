function [out] = neighbor(v)

    [n,m] = size(v);
    
    if m < 2 || n > 1
        out = [ ];
        return
    end
    out = zeros(1,m-1);
    for i = 1:1:m-1
       out(1,i) = abs(v(1,i) - v(1,i+1));
    end
end