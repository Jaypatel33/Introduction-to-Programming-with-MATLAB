function out = dial(in)
    out = [];
    
    if sum(sum(in == 'Q')) >= 1 || sum(sum(in == 'Z')) >= 1
        return
    end
    if sum(in == '?') >= 1 || sum(in == '!') >= 1 || sum(in == ':') >= 1
        return
    end
    
    
    s1 = (in >= 97);
    s2 = (in <= 122);
    s = (s1 == s2); 
    if sum(s) >= 1
        return
    end
    
    in = upper(in);
    [n,m] = size(in);
    out = char(zeros(size(in)));
    for i = 1:1:m
        if in(1,i) == '(' || in(1,i) == ')' || in(1,i) == '-'
            out(1,i) = char(' ');
        elseif in(1,i) == 'A' || in(1,i) == 'B' || in(1,i) == 'C'
            out(1,i) = '2';
        elseif in(1,i) == 'D' || in(1,i) == 'E' || in(1,i) == 'F'
            out(1,i) = '3';
        elseif in(1,i) == 'G' || in(1,i) == 'H' || in(1,i) == 'I'
            out(1,i) = '4';
        elseif in(1,i) == 'J' || in(1,i) == 'K' || in(1,i) == 'L'
            out(1,i) = '5';
        elseif in(1,i) == 'M' || in(1,i) == 'N' || in(1,i) == 'O'
            out(1,i) = '6';
        elseif in(1,i) == 'P' || in(1,i) == 'R' || in(1,i) == 'S'
            out(1,i) = '7';
        elseif in(1,i) == 'T' || in(1,i) == 'U' || in(1,i) == 'V'
            out(1,i) = '8';
        elseif in(1,i) == 'W' || in(1,i) == 'X' || in(1,i) == 'Y'
            out(1,i) = '9';
        else
            out(1,i) = in(1,i);
        end
    end
    
end