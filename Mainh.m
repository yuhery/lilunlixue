clear;
%����
[position,topology,force,n,order,force_1]=Input();

%���engel��H
[angel,ratio]=forAngel(position,topology,n);
H=forH(position,topology,angel,n,order);

%���x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,angel,order,2*n-3,ratio,force_1);