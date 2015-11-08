function m = May2015()

    days = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];
    start = 5;
    for i = 1:1:31
        m(i).month = 'May';
        m(i).date = i;
        x = 1;
        if mod(start,7) > 0
            x = mod(start,7);
        else 
            x = 7;
        end
        m(i).day = days(x,:);
        start = start + 1;
    end
end