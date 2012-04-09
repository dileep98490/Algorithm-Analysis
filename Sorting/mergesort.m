function mergesort(left,mid,right)
global a;
global b;
global cp;
i=left;j=left;h=mid+1;
while(j<=mid&&h<=right)
    %cp=cp+3;
    cp=cp+1;
    if(a(j)<a(h))
        b(i)=a(j);
        j=j+1;
    else
        b(i)=a(h);
        h=h+1;
    end
    i=i+1;
   % cp=cp+2;
end
%cp=cp+1;
if(j>mid)
    for k=h:right
 %       cp=cp+1;
        b(i)=a(k);
        i=i+1;
      %  cp=cp+1;
    end
else
    for k=j:mid
       %cp=cp+1;
        b(i)=a(k);
        i=i+1;
        %cp=cp+1;
    end
end
for k=left:right
    a(k)=b(k);cp=cp+1;
   
    
end
end

