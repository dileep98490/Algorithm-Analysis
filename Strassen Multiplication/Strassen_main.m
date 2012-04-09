disp('First matrix');
m1=input('Rows:');
n1=input('Columns:');
disp('Second matrix');
m2=input('Rows:');
n2=input('Columns:');
if(n1~=m2)
    disp('Matrix multiplication is not possible');
   return
   
    
end


a=round(rand(m1,n1)*100);
b=round(rand(m2,n2)*100);
disp(a);
disp(b);
disp(a*b);
l1=max(m1,n1);
l2=max(m2,n2);
l=max(l1,l2);
for k=1:100
    if (2^k>=l)
        break;
    end
end

k=2^k;

for i=m1+1:k
    for j=1:k
        a(i,j)=0;
    end
end
for j=n1+1:k
    for i=1:k
        a(i,j)=0;
    end
end



for i=m2+1:k
    for j=1:k
        b(i,j)=0;
    end
end

for j=n2+1:k
    for i=1:k
        b(i,j)=0;
    end
end


disp(a);
disp(b);
disp(a*b);


[r]=matmul(a,b,k);
disp(r);
