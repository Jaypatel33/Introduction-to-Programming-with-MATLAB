function B = divvy(A, k)
    B = zeros(size(A));
    B(mod(A,k) == 0) = A(mod(A,k) == 0);
    B(mod(A,k) ~= 0) = A(mod(A,k) ~= 0) * k;
end