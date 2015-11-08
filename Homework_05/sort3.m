function [out] = sort3(a, b, c)

    out = zeros(1,3);
    
    if a > b && a > c
        if b > c
            out(1,1) = c;
            out(1,2) = b;
            out(1,3) = a;
        else
            out(1,1) = b;
            out(1,2) = c;
            out(1,3) = a;
        end
    elseif b > c && b > a
        if c > a
            out(1,1) = a;
            out(1,2) = c;
            out(1,3) = b;
        else 
            out(1,1) = c;
            out(1,2) = a;
            out(1,3) = b;
        end
    else 
        if a > b
            out(1,1) = b;
            out(1,2) = a;
        else
            out(1,1) = a;
            out(1,2) = b;
        end
        out(1,3) = c;
    end

end