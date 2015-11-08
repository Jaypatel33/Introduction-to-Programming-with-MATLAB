function n = one_per_n(x)
    
    n = 1;
    iter = 1;
    while n < x
        iter = iter + 1;
        n = n + 1/iter;
        if iter == 10001
            n = -1;
            return
        end
    end

    n = iter;
end