clear;
%����
[position,topology,force,n,order]=Input();

%���engel��H
angel=forAngel(position,topology,n);
H=forH(position,topology,angel,n,order);

%���x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,angel,2*n-3);