%正弦序列
function x3=zhengxian(n,A,f,fs,fai)
n3=-n:n;
x3=A*sin(2*pi*f*n3/fs+fai);
stem(n3,x3);
xlabel ('时间序列');ylabel('振幅');title('正弦序列x3');