function [cp]=Insertionsort(a,k)
cp=0;
        for j=2:k
           i=j-1;
          % cp=cp+2;
           temp=a(j);
            cp=cp+2;
            
   while(temp<a(i))
      
           % cp=cp+2;
            a(i+1)=a(i);
           
      
       i=i-1;cp=cp+1;
       if(i==0)
           break;
       end
       
           
   end
   cp=cp+1;
   i=i+1;
   a(i)=temp;
   
        end

end
