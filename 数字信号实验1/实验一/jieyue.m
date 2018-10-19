%单位阶跃序列
function x2=jieyue(n)
x2=[zeros(1,n-1) ones(1,n)]
n2=-n+1:n-1
stem(n2,x2);xlabel ('时间序列');ylabel('振幅');title('单位阶跃序列x2');
