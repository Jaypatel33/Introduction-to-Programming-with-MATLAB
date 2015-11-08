function out = letter_counter(filename)
    fid = fopen(filename, 'rt');
    if fid < 0 
        out = -1;
        return
    end
    
    line = fgets(fid);
    out = 0;
    while ischar(line)
        out = out + sum(isletter(line));
        line = fgets(fid);
    end
end