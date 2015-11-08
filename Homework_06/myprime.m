function out = myprime(n)

    if n <= 1
        out = 0;
        return
    end
    
    if n <= 3
        out = 1;
        return
    end
    
    if mod(n,2) == 0 || mod(n, 3) == 0 
        out = 0;
        return
    end
    
    i = 5;
    while i*i <= n
        if mod(n,i) == 0 || mod(n, i+2) == 0
            out = 0;
            return
        end
        i = i + 6;
    end
    out = 1;
end