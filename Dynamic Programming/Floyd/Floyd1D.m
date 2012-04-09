p=3;
a=[0    4   5
    2   0   1000
    1000    -3  0];
  

adjacency(a,p);


%D(:,:,1)=a;%To make 2d matrix equal to a layer of 3-d matrix
D=a;
f=zeros(p,p);
for k=1:p
    for i=1:p
        for j=1:p

    
            if(D(i,j)>D(i,k)+D(k,j))
                D(i,j)=D(i,k)+D(k,j);
                f(i,j)=k;
            else
                D(i,j)=D(i,j);
            end

 
 

        end
    end
end
disp(D);
disp(f);
