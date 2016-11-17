%求解角度矩阵
%参数x1位置矩阵，x2拓扑矩阵，x3节点数
function [X]=forAngel(x1,x2,x3)

b=2*x3-3;
% 杆倾斜角矩阵
engel=ones(1,b);

position=x1;
topology=x2;

for m=1:1:b
    if position(1,topology(1,m))-position(1,topology(2,m))==0
        engel(m)=pi/2;
    else
    engel(m)=atan((position(2,topology(1,m))-position(2,topology(2,m)))/(position(1,topology(1,m))-position(1,topology(2,m))));
    end
end  

X=engel;
