function nxn(n)
A=zeros(n,n);
k=2;                       %設定初始給值的方向
num=4;                     %設定迴圈第一個給的數字是4
if(mod(n,2)~=0)            
    y=(n+1)/2;             %設定奇數矩陣的中心點為1
    x=(n+1)/2;
    A(x,y)=1;
else
    y=n/2;
    x=n/2;                 %設定偶數矩陣的中心點為1
    A(x,y)=1;
end
if n>1
    y=y+1;                 %先設定2和3的位置(因為2和3都只前進一格就轉變前進方向)
    A(x,y)=2;              
    x=x+1;
    A(x,y)=3;
end
if n==2
    A(2,1)=4               %補2X2矩陣的漏洞
end
if n>2                     %當n>2時
for ii=2:n-2               %從4開始往外給值
    for jj=1:2             %第一次往前移動兩格,轉彎後再移動兩格 第2次3格...以此類推
        for uu=1:ii        %k=1.2.3.4代表不同的方向
        if uu==1
            if k==4
                k=1;
            else
                k=k+1;
            end
        end
            if k==1
                y=y+1;
                A(x,y)=num;
            end
            if k==2
                x=x+1;
                A(x,y)=num;
            end
            if k==3
                y=y-1;
                A(x,y)=num;
            end
            if k==4
                x=x-1;
                A(x,y)=num;
            end
            num=num+1;
        end
    end
end
for aa=1:3
    for bb=1:n-1
        if bb==1
            if k==4
                k=1;
            else
                k=k+1;
            end
        end
            if k==1
                y=y+1;
                A(x,y)=num;
            end
            if k==2
                x=x+1;
                A(x,y)=num;
            end
            if k==3
                y=y-1;
                A(x,y)=num;
            end
            if k==4
                x=x-1;
                A(x,y)=num;
            end
            num=num+1;
        end
    end
end
A
end
                
                
        