%Program for LCS with three strings
clc

p=input('Enter the size of first string:');
q=input('Enter the size of second string:');
r=input('Enter the size of third string:');
 x=randseq(p);%random
 y=randseq(q);%random
 z=randseq(r);%random



disp('The lengths of the strings are');
m=length(x);
n=length(y);
l=length(z);
disp(m);
disp(n);
disp(l);
disp('The generated strings are');
 disp(x);
 disp(y);
disp(z);
c=zeros(m+1,n+1,l+1);
for i=2:m+1
    for j=2:n+1
        for k=2:l+1
            
        if((x(i-1)==y(j-1))&&(x(i-1)==z(k-1)))

   
            c(i,j,k)=c(i-1,j-1,k-1)+1;
            b(i,j,k)=1;


         % b(i,j)=1;
        else
      
                
           e=max(c(i-1,j,k),c(i,j-1,k));
           f=max(c(i,j,k-1),c(i-1,j-1,k));
           g=max(c(i,j-1,k-1),c(i-1,j,k-1));
           if(e>f)
               if(c(i-1,j,k)>c(i,j-1,k))
                   b(i,j,k)=2;
               else
                   b(i,j,k)=3;
               end
               if(e<g)
               if(c(i,j-1,k-1)>c(i-1,j,k-1))
                   b(i,j,k)=6;
               else
                  b(i,j,k)=7; 
               end
               
               end
               
               
           else
               if(c(i,j,k-1)>c(i-1,j-1,k))
                   b(i,j,k)=4;
               else
                   b(i,j,k)=5;
               end
               if(f<g)
                   if(c(i,j-1,k-1)>c(i-1,j,k-1))
                   b(i,j,k)=6;
               else
                  b(i,j,k)=7; 
                   end
               end
               
           end
           
               
           
           g=max(max(e,f),g);

           c(i,j,k)=g;
 
            
            
        end
        end
        
    end
        
        
end

fprintf('\n');
disp('The length of LCS is');
disp(c(m+1,n+1,l+1));
i=m+1;
j=n+1;
k=l+1;
fl=1;



while(i~=1 && j~=1 && k~=1)
    
if(b(i,j,k)==1)
str2(fl)= x(i-1);
fl=fl+1;
    i=i-1;
    j=j-1;
    k=k-1;
else
    if(b(i,j,k)==2)
        i=i-1;
    elseif(b(i,j,k)==3)
      j=j-1;
    elseif(b(i,j,k)==4)
        k=k-1;
        elseif(b(i,j,k)==5)
            i=i-1;
            j=j-1;
            elseif(b(i,j,k)==6)
                j=j-1;
                k=k-1;
                elseif(b(i,j,k)==4)
                    i=i-1;
                    k=k-1;
    end
end
end
disp('The LCS is');
disp(fliplr(str2(1:fl-1)));




