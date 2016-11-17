%用户输入
%输出位置矩阵X，拓扑矩阵Y，外力矩阵Z，节点数W
function [X,Y,Z,W]=Input()

%输入节点数和杆数
n=input('节点数');
b=input('杆数');
%节点位置矩阵?
position=ones(2,n);
% 节点拓扑矩阵
topology=ones(2,b);
% 外力矩阵
force=zeros(2*n,1);

k=input('1：一次矩阵输入  or 2：分节点输入');
if(k==1)
    position=(input('节点位置矩阵'))';
else
    for i=1:1:n
    position(:,i)=input('节点位置');
    end
end

%输入拓扑矩阵
m=input('1：一次矩阵输入  or 2：分杆输入');
if(m==1)
    topology=(input('拓扑关系矩阵'))';
else
    for i=1:1:b
	topology(:,i)=input('杆两端节点序号');
    end
end

forceNumber=input('有几个节点受外力');
for i=1:1:forceNumber
    number1=input('第几号节点');
    force1=input('外力大小');
    force(2*number1-1,1)=force1(1,1);
    force(2*number1,1)=force1(1,2);
end

X=position;
Y=topology;
Z=force;
W=n;