function [v1, v2] = separate_by_two(A)
    v1 = A(mod(A,2) == 0);
    v1 = v1(:)';
    v2 = A(mod(A,2) == 1);
    v2 = v2(:)';
end