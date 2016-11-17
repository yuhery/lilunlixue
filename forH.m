%求解H矩阵
%参数x1位置矩阵,x2拓扑矩阵，x3角度矩阵，x4节点数
function [X]=forH(x1,x2,x3,x4)

%特性矩阵
H=zeros(2*x4);

position=x1;
topology=x2;
engel=x3;
b=2*x4-3;

 for k=1:1:b
     m=topology(1,k);
     t=topology(2,k);
     if position(2,m) > position(2,t)
         H(2*m-1,k)=cos(engel(1,k));
         H(2*m,k)=sin(engel(1,k));
         H(2*t-1,k)=-cos(engel(1,k));
         H(2*t,k)=-sin(engel(1,k));
     elseif position(2,m)< position(2,t)
         H(2*m-1,k)=-cos(engel(1,k));
         H(2*m,k)=-sin(engel(1,k));
         H(2*t-1,k)=cos(engel(1,k));
         H(2*t,k)=sin(engel(1,k));
     elseif position(1,m)>position(1,t)
         H(2*m-1,k)=1;
         H(2*m,k)=0;
         H(2*t-1,k)=-1;
         H(2*t,k)=0;
     else
         H(2*m-1,k)=-1;
         H(2*m,k)=0;
         H(2*t-1,k)=1;
         H(2*t,k)=0;
     end
 end
 
 H(1,b+1)=1;
 H(2,b+2)=1;
 H(4,b+3)=1;
 
 X=H;