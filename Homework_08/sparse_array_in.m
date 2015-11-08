function out = sparse_array_in(filename)

fid = fopen(filename, 'r');
if fid < 0
    out = 0;
    return
end

n = fread(fid,1,'uint32');
m = fread(fid,1,'uint32');
non = fread(fid,1,'uint32');

out = zeros(n,m);

for k = 1:1:non
    i = fread(fid,1,'uint32');
    j = fread(fid,1,'uint32');
    num = fread(fid,1,'double');
    out(i,j) = num;
end


end