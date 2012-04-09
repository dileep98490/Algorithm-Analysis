function [j]=partition(p,q)
global cpl;
global a1;
i=p;
j=q;
v=a1(p);

while(1)
    while(1)
        i=i+1;
   if(i==q)
       break;
   end
   
       cpl=cpl+1;
        if(a1(i)>v)
            break;
            
        end
    end
     while(1)
        j=j-1;
      
      if(j==p)

    break;
       end
cpl=cpl+1;
        if(a1(j)<v)
            break;
            
        end
     end

    if(i<j)
 temp=a1(i);
 a1(i)=a1(j);
 a1(j)=temp;
 cpl=cpl+2;
    else
        break;
   
    
    end



end
a1(p)=a1(j);
a1(j)=v;
cpl=cpl+2;
end


    
    