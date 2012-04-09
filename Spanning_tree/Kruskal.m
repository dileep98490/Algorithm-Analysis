function [sd,f1]=Kruskal(a,p)
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
k=p;

mincost=0;
disp('The minimum cost at different stages');



while(1)
%    %Code to break while loop
%        for j=1:p
%         fl=0;
%         for ff=1:p
% if(a(ff,j)==1000)
% fl=1;
% break;
% end
% 
%         end
%     
%     if(fl~=1)
%         fl=2;
%         break;
%     end
%     
%        end
%     
% 
% 
% 
% 
% 
%      
%  if(fl~=2)
%     break;
%  end
% %code end

    
    
    
    
    
   
[min]=minimum(i,a,p);
z=k;

while (z~=0)
    f=minimum(z,a,p);
  
    if(a(z,f)<=a(i,min)&&a(f,z)~=1000||a(i,min)==1000)
min=f;
i=z;
    end
    z=z-1;
end

mainflag(i)=1;%For breaking loop
mainflag(min)=1;%For breaking loop
 
 str=sprintf('%d to %d with cost:%d',i,min,a(i,min));
 sd=sd+1;
 disp(str);
mincost=mincost+a(i,min);
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








