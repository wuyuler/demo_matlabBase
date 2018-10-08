%单位抽样序列
function y=danwei(n)
y=[zeros(1,n-1) 1 zeros(1,n-1)];
stem((-n+1):(n-1),y) 
xlabel ('时间序列');ylabel('振幅');title('单位抽样序列x1');