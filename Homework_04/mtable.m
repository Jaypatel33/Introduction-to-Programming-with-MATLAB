function [mt, s] = mtable(n, m)
    mt = (1:1:n)' * (1:1:m);
    s = sum(sum(mt));
end