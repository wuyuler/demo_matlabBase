function H=myhpgs(M,N,D0)
[U,V]=dftuv(M, N);
D = sqrt(U.^2 + V.^2);%获取矩形每一个点到该矩形原点距离的平方
H=exp(-(D.^2)./(2*(D0^2)));
H=1-H;
