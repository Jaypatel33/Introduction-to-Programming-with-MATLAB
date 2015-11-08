function [out] = rich(coins)
    out = 0;
    out = out + 1 * coins(1,1);
    out = out + 5 * coins(1,2);
    out = out + 10 * coins(1,3);
    out = out + 25 * coins(1,4);
    out = out / 100;
end