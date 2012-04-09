p=3;
a=[0    4   5
    2   0   1000
    1000    -3  0];
  

adjacency(a,p);

D=zeros(p,p,p);
%D(:,:,1)=a;%To make 2d matrix equal to a layer of 3-d matrix
b=a;
f=zeros(p,p);
for k=1:p
    for i=1:p
        for j=1:p
if(k~=1)
    
            if(D(i,j,k-1)>D(i,k,k-1)+D(k,j,k-1))
                D(i,j,k)=D(i,k,k-1)+D(k,j,k-1);
                f(i,j)=k;
            else
                D(i,j,k)=D(i,j,k-1);
            end
else
    if(b(i,j)>b(i,k)+b(k,j))
    D(i,j,k)=b(i,k)+b(k,j);
    f(i,j)=k;
    else
        D(i,j,k)=b(i,j);
    end
    
end

 

        end
    end
end
disp(D);
disp(f);
