%用户输入
%输出位置矩阵X，拓扑矩阵Y，外力矩阵Z，节点数W
function [X,Y,Z,W,M,E]=Input()

  %输入节点数和杆数
  n=input('节点数');
  b=input('杆数');

  if ((2*n-3)==b)
  % 外力矩阵
  force=zeros(2*n,1);

  %输入位置矩阵
  position=(input('节点位置矩阵'))';

  %输入约束点序号
  order=input('被约束的两个节点的位置顺序是');

  %输入拓扑矩阵
  topology=(input('拓扑关系矩阵'))';

  forceNumber=input('有几个节点受外力');
  force_1=zeros(3,forceNumber);
  for i=1:1:forceNumber
    number1=input('第几号节点');
    force_1(1,i)=number1;
    force1=input('外力大小');
    force(2*number1-1,1)=force1(1,1);
    force(2*number1,1)=force1(1,2);
    force_1(2,i)=slantAngle(force1(1,1),force1(1,2));
    force_1(3,i)=sqrt(force1(1,1)^2+force1(1,2)^2);
  end

  X=position;
  Y=topology;
  Z=force;
  W=n;
  M=order;
  E=force_1;
else
    disp('你输入的不是合法值');
  end