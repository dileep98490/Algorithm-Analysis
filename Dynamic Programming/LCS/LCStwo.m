%Program for LCS
clc
p=input('Enter the size of first string:');
q=input('Enter the size of second string:');
x=randseq(p);%random
y=randseq(q);%random
m=length(x);
n=length(y);
disp('The lengths of the strings are');
disp(m);
disp(n);
% x=input('Enter the first string:','s');
% y=input('Enter the second string:','s');

disp('The generated strings are');
disp(x);
disp(y);
for i=2:m+1
    c(i,1)=0;
end
for j=2:n+1
    c(1,j)=0;
end
for i=2:m+1
    for j=2:n+1
        if(x(i-1)==y(j-1))
            c(i,j)=c(i-1,j-1)+1;
          b(i,j)=1;
        else
            if(c(i,j-1)>c(i-1,j))
                
            c(i,j)=c(i,j-1);
            b(i,j)=2;
            else
                c(i,j)=c(i-1,j);
            b(i,j)=3;
            end
            
            
        end
    end
end
fprintf('\n');
disp('The length of LCS is');
disp(c(m+1,n+1))
i=m+1;
j=n+1;
fl=1;
while(i~=1 && j~=1)
    
if(b(i,j)==1)
str1(fl)= x(i-1);
fl=fl+1;
    i=i-1;
    j=j-1;
else
    if(b(i,j)==2)
        j=j-1;
    else
        i=i-1;
    end
end

end
disp('The LCS is');
disp(fliplr(str1(1:fl-1)));




