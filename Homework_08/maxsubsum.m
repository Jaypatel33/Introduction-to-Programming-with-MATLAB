function [row,col,numrows,numcols,summa] = maxsubsum(A)

    [n,m] = size (A);
    
    
    summa = A(1,1);
    row = 1;
    col = 1;
    numrows = 1;
    numcols = 1;
    
    for i = 1:1:n
        for j = 1:1:m
            
            for k = 1:1:n
                for l = 1:1:m
               
                    submatrix = A(i:1:k, j:1:l);
                    if sum(submatrix(:)) > summa
                        summa = sum(submatrix(:));
                        row = i;
                        col = j;
                        [numrows, numcols] = size(submatrix);
                    end
                    
                end
            end
        
        end
    end


end