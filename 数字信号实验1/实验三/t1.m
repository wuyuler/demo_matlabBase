clc
clear
num=[0.0528 0.0797 0.1295 0.1295 0.797 0.0528];
den=[1 -1.8107 2.4947 -1.8801 0.9537 -0.2336 ];
[z,p,k]=tf2zp(num,den);
%m=abs(p);
disp('零点');disp(z);
disp('极点');disp(p);
disp('增益系数');disp(k);
sos=zp2sos(z,p,k);
disp('二阶节');disp(real(sos));
zplane(num,den);

figure;
disp('幅度频率响应')
w=linspace(0,pi,256);
%求系统单位频率响应
h=freqz(num,den,w);
subplot(211)
plot(w/pi,abs(h));
title('幅度频率响应');ylabel('幅值')
subplot(212)
plot(w/pi,angle(h));grid;
title('相位响应');ylabel('弧度')








