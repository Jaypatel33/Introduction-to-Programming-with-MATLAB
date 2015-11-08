function [s1, s2, sums] = sines(pts, amp, n1, n2)
    if nargin < 1
        pts = 1000;
        amp = 1;
        n1 = 100;
        n2 = n1 + n1 * 0.05;
    end
    if nargin < 2
        amp = 1;
        n1 = 100;
        n2 = n1 + n1 * 0.05;
    end
    if nargin < 3
        n1 = 100;
        n2 = n1 + n1 * 0.05;
    end
    if nargin < 4
        n2 = n1 + n1 * 0.05;
    end
    
    t = (0:pts-1)/(pts-1);
    s1   = amp * sin( 2*pi*n1.*t );
    s2   = amp * sin( 2*pi*n2.*t );
    sums = s1 + s2;
    
    
    
end