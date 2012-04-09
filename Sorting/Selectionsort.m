function [cp] = Selectionsort(a,k)
cp=0;

    for i=1:k-1
temp1=i;       

        %cp=cp+1;
        for j=i+1:k
         %cp=cp+2;
cp=cp+1;
         if(a(j)<a(temp1))
             temp1=j;
         end
              end
     if(temp1~=i)
                temp=a(j);
        a(j)=a(i);
        a(i)=temp;
        cp=cp+2;
     end
     
      
         
            
           
            
   
       
        
       
       
    end
       
end
