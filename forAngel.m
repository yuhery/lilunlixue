%���ǶȾ���
%����x1λ�þ���x2���˾���x3�ڵ���
function [X]=forAngel(x1,x2,x3)

b=2*x3-3;
% ����б�Ǿ���
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
