%BTWԭ��
%˫���Ա任��
ws1=2*8000*tan(0.3*pi/2);
ws2=2*8000*tan(0.8*pi/2);
wp1=2*8000*tan(0.45*pi/2);
wp2=2*8000*tan(0.65*pi/2);
ws=[ws1 ws2];
wp=[wp1 wp2]; 
Rp=1;Rs=40;
[N,Wn]=buttord(wp,ws,Rp,Rs,'s');
[num,den]=butter(N,Wn,'s');
[B,A]=bilinear(num,den,8000);
[h,w]=freqz(B,A);
f=w/pi*4000;
subplot(2,1,1);
plot(f,20*log10(abs(h)));
axis([0,4000,-60,10]);
grid
xlabel('Ƶ��/Hz');ylabel('����/dB');
subplot(2,1,2)
plot(f,angle(h));
grid
xlabel('Ƶ��/Hz');ylabel('��λ');




