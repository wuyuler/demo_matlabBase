%复指数序列
function x4=fuzhishu(n,r,w)
n4=-n:n;
x4=r*exp(j*w*n4);
subplot(1,2,1);
stem(n4,real(x4));xlabel ('时间序列');ylabel('振幅');title('复指数序列实部x4');
subplot(1,2,2);
stem(n4,imag(x4));xlabel ('时间序列');ylabel('振幅');title('复指数序列虚部x4');
