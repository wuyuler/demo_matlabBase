function H=mylpbtw(M,N,D0,n)
[U,V]=dftuv(M, N);
D = sqrt(U.^2 + V.^2);%获取矩形每一个点到该矩形原点距离的平方
H = 1./(1 + (D./D0).^(2*n));%BTW的传递函数
