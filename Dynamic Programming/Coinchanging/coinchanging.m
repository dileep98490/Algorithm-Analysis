%Coin changing problem using Dynamic programming
n=3;
k=8;
clc;

d=[1 4 6];
j=1;
for i=1:n
    c(i,j)=0;
end

for i=1:n
    for j=2:k+1

        if(d(i)==j||i-1==0)
            if(d(i)==j&&i-1==0)
               c(i,j)=0;
            elseif(d(i)==j&&i-1~=0)
                c(i,j)=c(i-1,j);
            else
                c(i,j)=1+c(i,j-d(i));
            end
        else
            if(d(i)<j)
c(i,j)=min(1+c(i,j-d(i)),c(i-1,j));
            else
            c(i,j)=c(i-1,j);
            
            end
            
        end
    end
end
disp(c(1:n,1:k+1));
disp(c(n,k));

        