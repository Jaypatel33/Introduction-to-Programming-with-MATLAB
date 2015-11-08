function out = June2015()
    out = cell(30,1);
    days = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];
    start = 1;
    for i = 1:1:30
        out{i,1} = 'June';
        x = 0;
        if mod(start, 7) > 0
            x = mod(start, 7);
        else
            x = 7;
        end
        out{i,2} = i;
        out{i,3} = days(x,:);
        start = start + 1;
    end
end