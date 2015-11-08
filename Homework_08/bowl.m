function score = bowl(in)
    score = -1;
    board = cell(1, 21);
    n = length(in);
    iter = 1;
    
    if n <= 11 || n >= 22
        return
    end
    if n == 21
        if in(1,19) + in(1,20) < 10
            return
        end
    end
    if sum(in > 10)
        return
    end
    if sum(in < 0)
        return
    end
    if sum(in == 10) > 12
        return
    end
    
    if n == 19 && sum(in == 10) > 2
        return
    end
    if n == 20 && in(19) + in(20) == 10
        return
    end
        
    
    for i = 1:1:n
        if in(1,i) == 10 && iter == 19
            board{1,iter} = in(1,i);
            board{1, 20} = in(1,i+1);
            if i + 2 > n
                return
            end
            board{1, 21} = in(1,i+2);
            iter = 21;
            break
        elseif in(1,i) == 10 && iter == 20
            board{1,iter} = in(1,i);
            board{1, 21} = in(1,i+1);
            iter = 21;
            break
        elseif in(1,i) == 10 && iter == 21
             board{1,iter} = in(1,i);
             iter = 21;
             break
        elseif in(1,i) == 10 && mod(iter,2) == 0
            board{1,iter} = in(1,i);
            iter = iter + 1;
        elseif in(1,i) == 10 && mod(iter,2) == 1
            board{1,iter} = in(1,i);
            board{1,iter+1} = 'NA';
            iter = iter + 2;
        else
            board{1,iter} = in(1,i);
            if iter < 21
                iter = iter + 1;
            end
        end
    end
    
    if iter ~= 21
        return
    end
    
    score = 0;
    for i = 1:2:18
        b1 = board{1,i};
        b2 = board{1,i+1};
        
        if b1 == 10 %strike
            score = score + 10;
            c = 0;
            for k = i+2:1:21
                if ~strcmp(board(1,k),'NA')
                    c = c + 1;
                    score = score + board{1,k};
                end
                if c == 2
                    break;
                end
            end
        elseif (b1 == 0 && b2 == 10) || b1+b2 == 10 %spare
            score = score + 10 + board{1,i+2};
        else %open
            if b1 + b2 > 10
                score = -1;
                return
            end
            score = score + b1 + b2;
        end
    end
    
    %score
    if board{1,19} == 10
         score = score + 10 + board{1,20} + board{1,21};
     elseif board{1,19} + board{1,20} == 10
         score = score + 10 + board{1,21};
     else
         score = score + board{1,19} + board{1,20};
    end
    %board
end