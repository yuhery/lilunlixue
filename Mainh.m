clear;
%输入
[position,topology,force,n]=Input();

%求解engel和H
angel=forAngel(position,topology,n);
H=forH(position,topology,angel,n);

%求解x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,2*n-3);