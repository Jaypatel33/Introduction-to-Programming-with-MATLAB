function [p,k] = approximate_pi(delta)

    p = sqrt(12);
    k = 0;
    while abs(p - pi) > delta
        k = k + 1;
        p = sqrt(12);
        suma = 0;
        for i = 0:1:k
            suma = suma + (1/((-3).^(i)*(2*i + 1)));
        end
        p = p * suma;
    end
end