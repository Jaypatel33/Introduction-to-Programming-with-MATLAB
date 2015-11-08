function [board] = checkerboard(n, m)
    board = zeros(n,m);
    for i = 1:1:n
        if mod(i,2) == 1
            board(i,1:2:m) = 1;
        else
            board(i,2:2:m) = 1;
        end
    end
end