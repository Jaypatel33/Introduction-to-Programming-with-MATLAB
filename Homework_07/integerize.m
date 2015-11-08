function out = integerize(A)
    out = 'NONE';
    a = max(A(:));
    if  a >= 0 &&  a <= (2^8 - 1)
        out = 'uint8';
        return
    end
    if a > (2^8 - 1) && a <= (2^16-1)
        out = 'uint16';
        return
    end
    if a > (2^16 - 1) && a <= (2^32-1)
        out = 'uint32';
    end
    if a > (2^32 - 1) && a <= (2^64-1)
        out = 'uint64';
    end
    
end