function [r] = classify(in)

    [n,m] = size(in);
    
    if n == 0 || m == 0
        r = -1;
        return;
    elseif n == 1 && m == 1
        r = 0;
        return;
    elseif (n == 1 && m > 1) || (n > 1 && m == 1)
        r = 1;
        return;
    else 
        r = 2;
        return;
    end

end