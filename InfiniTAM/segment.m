flag = 0;
if size(i,3) == 1
    c = zeros(size(i,1), size(i,2), 1);
    flag=1;
else
    c = zeros(size(i,1), size(i,2), 3);
end
for p=1:size(b,1)
    for q=1:size(b,2)
        if b(p,q) == 1
            if flag==0
                c(p,q,1) = uint8(i(p,q,1));
                c(p,q,2) = uint8(i(p,q,2));
                c(p,q,3) = uint8(i(p,q,3));
            else
                c(p,q,1) = uint16(i(p,q,1));
            end
        end
    end
end
if flag==0
   c = uint8(c);
else
    c = uint16(c);
end