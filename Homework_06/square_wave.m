function out = square_wave(n)

    t = 0:(4*pi/1000):4*pi;
   
    out = zeros(size(t));
    
    for i = 1:1:1001
        suma = 0;
        for k = 1:1:n
            suma = suma + sin((2*k - 1)*t(1,i))/(2*k-1);
        end
        out(1,i) = suma;
    end
    
    
end