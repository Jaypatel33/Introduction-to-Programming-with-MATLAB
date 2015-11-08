function out = prime_pairs(n)
    out = -1;
    for i = 1:1:100000
        if isprime(i) && isprime(i+n)
            out = i;
            break;
        end
    end
end