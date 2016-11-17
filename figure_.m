function []=figure_(x1,x2,x3,angel,order,b)

position=x1;
topology=x2;
interForce=x3;

figure();
for i=1:1:b
    pot1=position(:,topology(1,i));
    pot2=position(:,topology(2,i));
    fill([pot1(1)+0.1*cos(angel(i)-pi/2),pot1(1)+0.1*cos(angel(i)+pi/2),pot2(1)+0.1*cos(angel(i)+pi/2),pot2(1)+0.1*cos(angel(i)-pi/2)],[pot1(2)+0.1*sin(angel(i)-pi/2),pot1(2)+0.1*sin(angel(i)+pi/2),pot2(2)+0.1*sin(angel(i)+pi/2),pot2(2)+0.1*sin(angel(i)-pi/2)],interForce(i));
    hold on;
end
axis equal;
colorbar();
hold on;
arrow1=position(:,order(1));
[arrow1_x1,arrow1_y1]=Arrows(arrow1(1),arrow1(2),1,0);
fill(arrow1_x1,arrow1_y1,interForce(b+1));
hold on;
[arrow1_x2,arrow2_y2]=Arrows(arrow1(1),arrow1(2),1,-pi/2);
fill(arrow1_x2,arrow2_y2,interForce(b+2));
hold on;
arrow2=position(:,order(2));
[arrow2_x,arrow2_y]=Arrows(arrow2(1),arrow2(2),1,-pi/2);
fill(arrow2_x,arrow2_y,interForce(b+3));
hold on;

t=deg2rad(0:360);
for i=1:1:(b+3)/2
    X=position(1,i)+0.1*cos(t);
    Y=position(2,i)+0.1*sin(t);
    plot(X,Y);
    hold on;
    fill(X,Y,'r');
end