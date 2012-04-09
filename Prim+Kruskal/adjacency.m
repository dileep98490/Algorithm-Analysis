function [flag]=adjacency(a,p)

for i=1:p
    for j=1:p
        if(i==j)
            a(i,j)=0;
        end
    end
end

for i=1:p
    flag=1;
    for j=1:p
        if(a(i,j)~=0)
           flag=0; break;
        end
    end
    if(flag==1)
disp('Not connected')
flag=2;
        break;
    end
        
end

end



