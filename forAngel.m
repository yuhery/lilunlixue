%Çó½â½Ç¶È¾ØÕó
%²ÎÊýx1Î»ÖÃ¾ØÕó£¬x2ÍØÆË¾ØÕó£¬x3½ÚµãÊý
function [X,Y]=forAngel(x1,x2,x3)

b=2*x3-3;
% ¸ËÇãÐ±½Ç¾ØÕó
engel=zeros(1,b);
length=zeros(1,b);

position=x1;
topology=x2;

for m=1:1:b
    if position(1,topology(1,m))-position(1,topology(2,m))==0
        engel(m)=pi/2;
    else
    engel(m)=atan((position(2,topology(1,m))-position(2,topology(2,m)))/(position(1,topology(1,m))-position(1,topology(2,m))));
    end
end  

for i=1:1:b
    length(i)=sqrt((position(2,topology(1,i))-position(2,topology(2,i)))^2+(position(1,topology(1,i))-position(1,topology(2,i)))^2);
end

min=length(1);
for i=2:1:b
    if(min>=length(i))
        min=length(i);
    end
end

ratio=min/3;
X=engel;
Y=ratio;