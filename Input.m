%�û�����
%���λ�þ���X�����˾���Y����������Z���ڵ���W
function [X,Y,Z,W,M,E]=Input()

  %����ڵ����͸���
  n=input('�ڵ���');
  b=input('����');

  if ((2*n-3)==b)
  % ��������
  force=zeros(2*n,1);

  %����λ�þ���
  position=(input('�ڵ�λ�þ���'))';

  %����Լ�������
  order=input('��Լ���������ڵ��λ��˳����');

  %�������˾���
  topology=(input('���˹�ϵ����'))';

  forceNumber=input('�м����ڵ�������');
  force_1=zeros(3,forceNumber);
  for i=1:1:forceNumber
    number1=input('�ڼ��Žڵ�');
    force_1(1,i)=number1;
    force1=input('������С');
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
    disp('������Ĳ��ǺϷ�ֵ');
  end