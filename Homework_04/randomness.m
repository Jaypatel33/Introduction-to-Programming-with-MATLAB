function [out] = randomness(limit, n, m)
    out = floor(1 + limit*rand(n,m));
end