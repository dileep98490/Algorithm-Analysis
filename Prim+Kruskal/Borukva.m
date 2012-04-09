function [f1]=Borukva(a,p)

for i=1:p
    mainflag(i)=0;
end

[flag]=adjacency(a,p);
if (flag==2)
disp('Cannot proceed, the matrix is not connected')
return
end
i=1;
k=1;

mincost=0;
while(k~=p)
check(k)=k;
k=k+1;
end

disp('The minimum cost at different stages')
while(1)
    
   
[min]=minimum(i,a,p);

z=k-1;
while (z~=0)
    f=minimum(check(z),a,p);
    if(a(check(z),f)<a(i,min)&&a(f,check(z))~=1000||a(i,min)==1000)
min=f;
i=check(z);
    end
    z=z-1;
end
mainflag(i)=1;
mainflag(min)=1;

% for i=1:p
%     for j=1:p
%         if(a(i,j)~=1000)
%             count=1;
%             break;
%         end
%     end
% end

   




mincost=mincost+a(i,min);
a(i,min)=1000;
for j=1:p
    
a(j,i)=1000;

end
  

 
str=sprintf('%d to %d with cost:%d',i,min,mincost);
 disp(str);
 
f1=mincost;
 i=min;
 count=0;
 for j=1:p
     if(mainflag(j)==0)
         count=1;
         break;
     end
 end
 
         
if(count==0)
    break;
end
end
disp('The final minimum cost is')

disp(f1)








