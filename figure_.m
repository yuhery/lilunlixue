function []=figure_(x1,x2,x3,b)

position=x1;
topology=x2;
interForce=zeros(b);

for i=1:1:b
    interForce(i)=x3(i);
end

figure();
for i=1:1:b
    pot1=position(:,topology(1,i));
    pot2=position(:,topology(2,i));
    fill([pot1(1),pot1(1),pot2(1),pot2(1)],[pot1(2),pot1(2)+0.1,pot2(2)+0.1,pot2(2)],interForce(i));
    hold on;
end
