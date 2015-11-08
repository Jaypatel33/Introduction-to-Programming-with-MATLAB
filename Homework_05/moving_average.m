function [out] = moving_average(x)
    persistent t ;
    persistent buffer;
    
    if size(t) == [0 0]
        t = 1;
        buffer = [x buffer];
    elseif t < 25
        t = t + 1;
        buffer = [x buffer];
    else 
        buffer = [x buffer(1, 1:24)];
    end
    out = sum(buffer(:)) / t;
end