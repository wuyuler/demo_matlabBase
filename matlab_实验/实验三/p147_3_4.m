%绘图区间[-1,1]
%绘制极坐标图
x1=-1:0.5:1;
y1=2*x1-0.5;

t=0:pi/100:pi;
x2=sin(3*t).*cos(t);%注意点乘
y2=sin(3*t).*sin(t);
hold on;%不太明白为
%限制y坐标
axis([-1,1,-1.5,1.5]);
plot(x1,y1,'r',x2,y2,'b'),
xlabel('1600200010');
ylabel('计科161');
title('唐永金');
%我们已知有4个交点,通过鼠标点击获取
jiaodian=ginput(4);
hold on 
plot(jiaodian(:,1),jiaodian(:,2),'ro');
%plot(jiaodian,'ro');
legend("y=2x-0.5","x=sin(3t)cost,y=sin(3t)sint")
