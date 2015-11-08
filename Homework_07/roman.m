function out = roman(in)
   
    if strcmp(in, 'I')
        out = uint8(1);
    elseif strcmp(in, 'II')
        out = uint8(2);
    elseif strcmp(in,'III')
        out = uint8(3);
    elseif strcmp(in,'IV')
        out = uint8(4);
    elseif strcmp(in,'V')
        out = uint8(5);
    elseif strcmp(in,'VI')
        out = uint8(6);
    elseif strcmp(in,'VII')
        out = uint8(7);
    elseif strcmp(in, 'VIII')
        out = uint8(8);
    elseif strcmp(in,'IX')
        out = uint8(9);
    elseif strcmp(in, 'X')
        out = uint8(10);
    elseif strcmp(in,'XI')
        out = uint8(11);
    elseif strcmp(in,'XII')
        out = uint8(12);
    elseif strcmp(in,'XIII')
        out = uint8(13);
    elseif strcmp(in,'XIV')
        out = uint8(14);
    elseif strcmp(in,'XV')
        out = uint8(15);
    elseif strcmp(in, 'XVI')
        out = uint8(16);
    elseif strcmp(in,'XVII')
        out = uint8(17);
    elseif strcmp(in, 'XVIII')
        out = uint8(18);
    elseif strcmp(in, 'XIX')
        out = uint8(19);
    elseif strcmp(in,'XX')
        out = uint8(20);
    else
        out = uint8(0);
    end
    

end