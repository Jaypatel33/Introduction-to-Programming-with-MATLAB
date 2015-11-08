function [v1, v2] = light_time(in)
    v2 = in .* 1.609;
    v1 = (v2 ./ 300000) ./ 60;
end