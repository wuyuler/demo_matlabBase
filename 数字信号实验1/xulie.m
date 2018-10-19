%单位抽样序列
n=0:5;
x1=[1 zeros(1,5)];
subplot(2,3,1);
stem(n,x1);xlabel ('时间序列');ylabel('振幅');title('单位抽样序列x1');

%单位阶跃序列
x2=[zeros(1,5) ones(1,5)]
subplot(2,3,2);
n2=-5:4;
stem(n2,x2);xlabel ('时间序列');ylabel('振幅');title('单位阶跃序列x2');

%正弦序列 设A=1，f=10，Fs=100,fai=pi/3
n3=0:20;
x3=1*sin(2*pi*10*n3/100+pi/3);
subplot(2,3,3);
stem(n3,x3);xlabel ('时间序列');ylabel('振幅');title('正弦序列(设A=1，f=10，Fs=100,fai=pi/3)x3');

%复指数序列 设r为1,w=1
%实部
n4=-5:4;
r=1;
w=1;
x4=r*exp(j*w*n4);
subplot(2,3,4);
stem(n4,real(x4));xlabel ('时间序列');ylabel('振幅');title('复指数序列实部(设r为1,w=1)x4');

subplot(2,3,5);
stem(n4,imag(x4));xlabel ('时间序列');ylabel('振幅');title('复指数序列虚部(设r为1,w=1)x4');

%指数序列 a=3
n5=0:9;
a=3;
x5=a.^n5;
subplot(2,3,6);
stem(n5,x5);xlabel ('时间序列');ylabel('振幅');title('指数序列(a=3)x4');


