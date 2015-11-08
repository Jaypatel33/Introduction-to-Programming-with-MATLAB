function [mm] = mean_squares(nn)
    mm = 0;
    for i = 1:1:nn
        mm = mm + i^2;
    end
    mm = mm / nn;
end