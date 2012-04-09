%Binomial coefficient using Dynamic programming

n=input('Enter the value of n :');
k=input('Enter the value of k :');
     

j=1;
for i=1:n
    c(i,j)=i;
end
i=1;
for j=2:n
    c(i,j)=0;
end


for i=2:n
           
    for j=2:k
 
        if(j==1||j==n)
            c(i,j)=1;
        elseif(1<j<n)
                c(i,j)=c(i-1,j)+c(i-1,j-1);
            else
                c(i,j)=0;
           
        end
    end
end
disp(c(1:n,1:k));
disp(c(n,k));
            
        
        