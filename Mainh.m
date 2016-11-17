clear;
%输入
[position,topology,force,n,order]=Input();

%求解engel和H
angel=forAngel(position,topology,n);
H=forH(position,topology,angel,n,order);

%求解x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,angel,2*n-3);