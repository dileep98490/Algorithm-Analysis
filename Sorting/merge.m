function []=merge(l,r)
global cp;
cp=cp+1;
if(r-l<15)
    merge_insertion(l,r);
else     

    m=floor((l+r)/2);cp=cp+2;
    merge(l,m);
    merge(m+1,r);%cp=cp+1;
    cp=cp+1;
mergesort(l,m,r);

end
    

end
