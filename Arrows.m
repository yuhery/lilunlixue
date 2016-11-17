%产生箭头参量的函数
function [W,M]=Arrows(x,y,ratio,angel)

W=[x-0.05*ratio,x-0.05*ratio,x-0.1*ratio,x,x+0.1*ratio,x+0.05*ratio,x+0.05*ratio];
M=[y,y+2*ratio,y+2*ratio,y+2.3*ratio,y+2*ratio,y+2*ratio,y];

for i=1:1:7
    a=W(i);
    b=M(i);
    W(i)=(a-x)*cos(angel)-(b-y)*sin(angel)+x;
    M(i)=(a-x)*sin(angel)+(b-y)*cos(angel)+y;
end
