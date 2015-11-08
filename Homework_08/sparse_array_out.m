function out = sparse_array_out(data, filename)

[n,m] = size(data);

non_zero = data ~= 0;
non = sum(non_zero(:));

fid = fopen(filename, 'w');
if fid < 0
    out = 0;
    return
end

fwrite(fid,n,'uint32');
fwrite(fid,m,'uint32');
fwrite(fid,non,'uint32');

for i = 1:1:n
    for j = 1:1:m
        if data(i,j) ~= 0
            fwrite(fid,i,'uint32');
            fwrite(fid,j,'uint32');
            fwrite(fid,data(i,j),'double');
        end
    end
end

out = 1;
end