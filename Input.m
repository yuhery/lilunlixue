%�û�����
%���λ�þ���X�����˾���Y����������Z���ڵ���W
function [X,Y,Z,W,M]=Input()

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
  M=order;
else
    disp('������Ĳ��ǺϷ�ֵ');
  end