function [Q] = quadrants(n)
    Q = zeros(2*n,2*n);
    Q(1:1:n, 1:1:n) = 1;
    Q(1:1:n, n+1:1:2*n) = 2;
    Q(n+1:1:2*n, 1:1:n) = 3;
    Q(n+1:1:2*n, n+1:1:2*n) = 4;
end