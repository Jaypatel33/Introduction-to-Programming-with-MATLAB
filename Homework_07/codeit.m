function coded = codeit(txt)
   % 65 - 90 -> A - Z
   % 97 - 122 -> a - z
   
   %65 - 90 // - 65 -> 0 - 25
   
   %0 + 25 = 25
   %25 - 1 = 24
   
   [n,m] = size(txt);
   for i = 1:1:m
        c = int8(txt(1,i));
        if c >= 65 && c <= 90
            c = 25 - (c - 65);
            c = c + 65;
            txt(1,i) = char(c);
            continue;
        end 
        if c >= 97 && c <= 122
            c = 25 - (c - 97);
            c = c + 97;
            txt(1,i) = char(c);
            continue;
        end
   
   end
   
    
    coded = txt;
end