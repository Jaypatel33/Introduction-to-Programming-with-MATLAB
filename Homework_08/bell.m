function B = bell(n)
    if n<1 || fix(n)~=n  
        B=[];
        return;
    end
    
    B = zeros(n);
    B(1,1) = 1;

    for row=2:n
        B(row, 1:row) = B(row-1,row-1) + cumsum([0 B(row-1, 1:row-1)]);
    end
    
    A=B(:,1);
    count=n-1;
    
    for i=2:n
        C=circshift(B(:,i),count);
        A=[A C];
        count=count-1;
    end
    
    B=A;
end