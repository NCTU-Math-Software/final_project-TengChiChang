function nxn2(n)
num=0;
total=0;
if(mod(n,2)~=0)
   num=1;
   total=1;
   ii=2;
   while(ii~=n+1)
       for jj=1:4
           num=num+ii;
           total=total+num;
       end
       ii=ii+2;
   end
else
    ii=1
    while(ii~=n+1)
       for jj=1:4
           num=num+ii;
           total=total+num;
       end
       ii=ii+2;
   end
end
total
end
            
            