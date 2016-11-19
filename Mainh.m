clear;
%输入
[position,topology,force,n,order,force_1]=Input();

%求解engel和H
[angel,ratio]=forAngel(position,topology,n);
H=forH(position,topology,angel,n,order);

%求解x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,angel,order,2*n-3,ratio,force_1);