function nxn(n)
A=zeros(n,n);
k=2;                       %�]�w��l���Ȫ���V
num=4;                     %�]�w�j��Ĥ@�ӵ����Ʀr�O4
if(mod(n,2)~=0)            
    y=(n+1)/2;             %�]�w�_�Ưx�}�������I��1
    x=(n+1)/2;
    A(x,y)=1;
else
    y=n/2;
    x=n/2;                 %�]�w���Ưx�}�������I��1
    A(x,y)=1;
end
if n>1
    y=y+1;                 %���]�w2�M3����m(�]��2�M3���u�e�i�@��N���ܫe�i��V)
    A(x,y)=2;              
    x=x+1;
    A(x,y)=3;
end
if n==2
    A(2,1)=4               %��2X2�x�}���|�}
end
if n>2                     %��n>2��
for ii=2:n-2               %�q4�}�l���~����
    for jj=1:2             %�Ĥ@�����e���ʨ��,���s��A���ʨ�� ��2��3��...�H������
        for uu=1:ii        %k=1.2.3.4�N���P����V
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
                
                
        