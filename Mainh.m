clear;
%����
[position,topology,force,n]=Input();

%���engel��H
angel=forAngel(position,topology,n);
H=forH(position,topology,angel,n);

%���x
x=-inv(H)*force;
disp(x);
figure_(position,topology,x,2*n-3);