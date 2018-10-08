%指数序列
function x5=zhishu(n,a)
n5=-n:n;
x5=a.^n5;
stem(n5,x5);xlabel ('时间序列');ylabel('振幅');title('指数序列x4');
