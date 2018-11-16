num=[0.8 -0.44 0.36 0.02];
den=[1 0.7 -0.45 -0.6];
w=linspace(0,pi,256);
h=freqz(num,den,w);
subplot(211)
plot(w/pi,abs(h));grid;
title('幅度谱');ylabel('幅值')
subplot(212)
plot(w/pi,angle(h));grid;
title('相位谱'); ylabel('弧度')
