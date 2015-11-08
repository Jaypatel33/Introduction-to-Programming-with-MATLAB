function [gen] = generationXYZ(in)
    if in < 1966
        gen = 'O';
        return;
    elseif in >= 1966 && in <= 1980
        gen = 'X';
        return
    elseif in >= 1981 && in <= 1999
        gen = 'Y';
        return
    elseif in >= 2000 && in <= 2012
        gen = 'Z';
        return
    else gen = 'K';
    end

end