function [out] = movies(hr1, min1, durmin1, hr2, min2, durmin2)

    ending_1 = hr1 * 60 + min1 + durmin1;
    
    start_2 = hr2 * 60 + min2;
    
    if ending_1 > start_2
        out = 0;
        return;
    end
    
    if start_2 - ending_1 <= 30
        ending_2 = start_2 + durmin2;
        if ending_2 <= 12*60
            out = 1;
            return
        end
        out = 1;
        return;
    end;
    out = 0;
        return;
end