function out = queen_check(board)
    out = 0;
    [n,m] = size(board);
    
    for i = 1:1:n
        for j = 1:1:m
            if board(i,j) == 1
                %check the row
                for k = 1:1:m
                    if board(i,k) == 1 && k ~=j
                        return
                    end
                end
                %check the col
                for l = 1:1:n
                    if board(l,j) == 1 && l~=i
                        return
                    end
                end
                %check right diagonal bottom
                l = i+1; k = j+1;
                while l <= n && k <= m
                    if board(l,k) == 1
                        return
                    end
                    l = l + 1; k = k + 1;
                end
                %check right diagonal top
                l = i-1; k = j-1;
                while l >= 1 && k >= 1
                    if board(l,k) == 1
                        return
                    end
                    l = l - 1; k = k - 1;
                end
                %check left diagonal bottom
                l = i + 1; k = j - 1;
                while l <= n && k >= 1
                    if board(l,k) == 1
                        return
                    end
                    l = l + 1; k = k - 1;
                end
                %check left diagonal top
                l = i - 1; k = j + 1;
                while l >= 1 && k <= m
                    if board(l,k) == 1
                        return
                    end
                    l = l - 1; k = k + 1;
                end
                
            end
            
        end
    end
    
    out = 1;
end