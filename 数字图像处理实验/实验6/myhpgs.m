function H=myhpgs(M,N,D0)
[U,V]=dftuv(M, N);
D = sqrt(U.^2 + V.^2);%��ȡ����ÿһ���㵽�þ���ԭ������ƽ��
H=exp(-(D.^2)./(2*(D0^2)));
H=1-H;
