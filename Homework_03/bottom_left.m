function [out] = bottom_left(N, n)
       out = N(end-n+1:1:end, 1:1:n);
end