function H=mylpbtw(M,N,D0,n)
[U,V]=dftuv(M, N);
D = sqrt(U.^2 + V.^2);%��ȡ����ÿһ���㵽�þ���ԭ������ƽ��
H = 1./(1 + (D./D0).^(2*n));%BTW�Ĵ��ݺ���
