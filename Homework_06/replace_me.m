function w = replace_me (v, a, b, c)

    if nargin == 2
        b = 0;
        c = 0;
    end
    if nargin == 3
        c = b;
    end
    
   [n, m] = size(v);
   w = [];
   for i = 1:1:m
       if v(1,i) == a
           w = [w b c];
       else
           w = [w v(1,i)];
       end
   end

end