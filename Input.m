%�û�����
%���λ�þ���X�����˾���Y����������Z���ڵ���W
function [X,Y,Z,W]=Input()

%����ڵ����͸���
n=input('�ڵ���');
b=input('����');
%�ڵ�λ�þ���?
position=ones(2,n);
% �ڵ����˾���
topology=ones(2,b);
% ��������
force=zeros(2*n,1);

k=input('1��һ�ξ�������  or 2���ֽڵ�����');
if(k==1)
    position=(input('�ڵ�λ�þ���'))';
else
    for i=1:1:n
    position(:,i)=input('�ڵ�λ��');
    end
end

%�������˾���
m=input('1��һ�ξ�������  or 2���ָ�����');
if(m==1)
    topology=(input('���˹�ϵ����'))';
else
    for i=1:1:b
	topology(:,i)=input('�����˽ڵ����');
    end
end

forceNumber=input('�м����ڵ�������');
for i=1:1:forceNumber
    number1=input('�ڼ��Žڵ�');
    force1=input('������С');
    force(2*number1-1,1)=force1(1,1);
    force(2*number1,1)=force1(1,2);
end

X=position;
Y=topology;
Z=force;
W=n;