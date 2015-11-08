function [out] = older(y1, m1, d1, y2, m2, d2)
    if y1 == y2 && m1 == m2 && d1 == d2
        out = 0;
        return;
    end
    
    if y1 < y2
        out = 1;
        return;
    end
    if y1 > y2
        out = -1;
        return;
    end
    
    if m1 < m2
        out = 1;
        return;
    end
    if m1 > m2
        out = -1;
        return;
    end
    
    if d1 < d2
        out = 1;
        return;
    end
    if d1 > d2
        out = -1;
        return;
    end
        
    
end