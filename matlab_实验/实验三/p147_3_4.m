%��ͼ����[-1,1]
x1=-1:0.5:1;
y1=2*x1-0.5;

t=0:pi/100:pi;
x2=sin(3*t).*cos(t);%ע����
y2=sin(3*t).*sin(t);
hold on;
%����y����
axis([-1,1,-1.5,1.5]);
plot(x1,y1,'r',x2,y2,'b'),
xlabel('1600200010');
ylabel('�ƿ�161');
title('������');
%������֪��4������,ͨ���������ȡ
jiaodian=ginput(4);
hold on 
plot(jiaodian(:,1),jiaodian(:,2),'ro');
%plot(jiaodian,'ro');
legend("y=2x-0.5","x=sin(3t)cost,y=sin(3t)sint")
