function [min]=minimumrandom(i,a,p)

 for j=1:p
         if(a(i,j)~=0 && a(i,j)~=1000)
             min=j;
             break;
         end
 end
     
     for j=1:p
         if(a(i,min)>a(i,j) && a(i,j)~=0)
             min=j;
         end
     end
     



end