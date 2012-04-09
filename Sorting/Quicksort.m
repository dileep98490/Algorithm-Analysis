
function []=Quicksort(l,r)
global cpl;
if(r-l<15)
    merge_insertion(l,r);
else
    
    [j]=partition(l,r+1);
cpl=cpl+2;
    Quicksort(l,j-1);
    Quicksort(j+1,r);
end
end

    

