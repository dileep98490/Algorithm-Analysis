function[cp]= Bubblesort(a,k)
cp=0;
sw=1;
i=0;
   for i=1:k-1
            sw=0;
          
         % cp=cp+1;      
    for j=i+1:k
  % cp=cp+2;
  cp=cp+1;
        if a(j)<a(i)
          
            temp=a(j);
            a(j)=a(i);
            a(i)=temp;
        sw=sw+1;
       %cp=cp+1;
  
      cp=cp+2;
        end
    end
    %cp=cp+1;
    if(sw==0)
            break;
        end
        
            
   end
   
end


