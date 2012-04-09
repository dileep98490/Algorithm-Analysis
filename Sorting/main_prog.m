function main_prog()
p=1;


for k=4:10
l=2^k;
m=round(rand(1,l)*100);


   [cp]=Insertionsort(m,l);
   B(p)=cp;
   C(p)=l;
 
   [cp1]=Selectionsort(m,l);
   B1(p)=cp1;
   C1(p)=l;
   [cp2]=Bubblesort(m,l);
   B2(p)=cp2;                                                                                                                                                                             
   C2(p)=l;
   [cp3]=Main_merge(m,l);
   B3(p)=cp3;
   C3(p)=l;
   
   [cp4]=Quickcall(m,l);
   B4(p)=cp4;
   C4(p)=l;
   
   p=p+1;
   
disp(cp)
disp(cp1)
 disp(cp2)
 disp(cp3)
 disp(cp4)

end

plot(C,B,C1,B1,C2,B2,C3,B3,C4,B4,'Linewidth',2)
xlabel('No. of elements');
ylabel('No. of Comparisons');
legend('Insertionsort','Selectionsort','Bubblesort','Mergesort','Quicksort');

end
