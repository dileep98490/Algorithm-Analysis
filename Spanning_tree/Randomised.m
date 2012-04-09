function [sd,mincost]=Randomised(a,p)
c=zeros(p,p);
n=1;sd=0;
for i=1:p
    [j]=minimumrandom(i,a,p);
    
   
   
        p1=j;fl1=0;
        if(minimumrandom(p1,a,p)==i)
            fl1=3;
        end
        
        while(1)
        if(fl1==3)
            break;
        end
        [p2]=minimumrandom(p1,a,p);
      
           
       if(p2==i)
           fl1=100;
           break;
       end
      
        fl1=fl1+1;
        n=n+1;
        if(n==p)
            break;
        end
        p1=p2;
        end
        c(i,j)=1;
      if(fl1~=100&&a(j,i)~=1000)  

c(j,i)=1;
      end
 
    
end

%disp(c);
grrow=1;

fil=1;
i=1;
pu=1;
while(1)
    grcol=1;
ch=1;
flag=1;
    while(flag~=100)

    if(ch~=1)
   for j=1:p
   if(c(i,j)==1)     
        
        z=ch-1;
    flag=0;
    while(z~=0)
        if(check(z)==j)
        flag=flag+1;
        end
        
        z=z-1;
    end
    if(flag==0)
        i=j;
        break;
       
    end
 
   end
   
   end
    else
        flag=0;
    end
    if(flag~=0)
    
        
        for i=1:p
        z=pu-1;
        flag=0;
        while(z~=0)
            if(puf(z)==i)
            flag=1;
            break;
            end
            z=z-1;
        end
                  
        if(flag~=1)
            break;
        end
        
        end
            break;
        
        
    end
    
        
        gr(grrow,grcol)=i;
        grcol=grcol+1;
    check(ch)=i;
    puf(pu)=i;
    pu=pu+1;
    ch=ch+1;
fil=fil+1;

    if(fil==p+1)
       flag=100;
   
      
    end
%     for j=1:p
%         if(c(i,j)==1)
%         i=j;
%             break;
%         end
%     end
    
        
    end
    
    
    
    
    
    if(flag==100)
        break;
    end
    
    
    grrow=grrow+1;
    
    
    
    
end
%disp(gr(1:grrow,1:grcol));


  
     
        
      
     
        for k=1:grrow
             st=1;  
     min=0;
                
                mini=0;
                minj=0;
            for i=1:grrow/2
                  for j=1:grcol
                        if(gr(i,j)~=0)
            if(k~=i)    
          
            for l=1:grcol
                if(gr(k,l)~=0&&gr(k,l)~=gr(i,j))
             z=st-1;
                flag=0;
                while(z~=0)
                    if(sto(z)==k)
                        flag=100;
                        break;
                    end
                    z=z-1;
                end
                if(flag==100)
                    break;
                end
             
                if(a(gr(i,j),gr(k,l))~=1000)
                    if(min==0)
                        mini=gr(i,j);
                        minj=gr(k,l);
                    else
                        if(min>a(gr(i,j),gr(k,l)))
                            min=a(gr(i,j),gr(k,l));
                            mini=gr(i,j);
                        minj=gr(k,l);
                        end
                    end
                end
               
                end
            
             
            end
         
            
             if(flag==100)
                 break;
             end
               
          
            end
                        end
               
                  end
                   if(flag==100)
                 break;
                   end
             
    
            end
   sto(st)=k;
           st=st+1;
           
              if(mini~=0)
                c(mini,minj)=1;
                c(minj,mini)=1;
              end
            
        end
 
%disp(c);
mincost=0;
disp('The minimum cost at different stages');
for i=1:p
    for j=1:p
        if(c(i,j)==1&&c(j,i)==1)
            c(i,j)=2;
         str=sprintf('%d to %d with cost:%d',i,j,a(i,j));sd=sd+1;
         mincost=mincost+a(i,j);
         disp(str);
        end
    end
end
disp('The final minimum cost is')
disp(mincost);
end



