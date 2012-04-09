function [sd,f1]=Prim(a,p)
sd=0;
for i=1:p
    mainflag(i)=0;%To check whether all vertices are spanned or not
end
[flag]=adjacency(a,p);
if (flag==2)
disp('Cannot proceed, the matrix is not connected')
return
end
i=1;
k=1;

mincost=0;

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


    check(k)=i;
      k=k+1;
   
mainflag(i)=1;%For breaking loop
mainflag(min)=1;%For breaking loop



mincost=mincost+a(i,min);
 
str=sprintf('%d to %d with cost:%d',i,min,a(i,min));sd=sd+1;
 disp(str);
a(i,min)=1000;
for j=1:p
    
a(j,i)=1000;

end
  


 
f1=mincost;
 i=min;
 %For breaking loop-start
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
%For breaking loop-end
end
disp('The final minimum cost is')

disp(f1)








