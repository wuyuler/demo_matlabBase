clc
clear
A=1:25;
A=reshape(A,5,[])';%[]��ʾ����Ӧ����
B=[3,0,16;17,-6,9;0,23,-4;9,7,0;4,13,11];
%5.(1)
C=A*B

%5.(2)
[M,N]=size(C);%��ȡ������к���
%��ȡ�������½�3*2�Ӿ���
D=C(M-2:end,N-1:end)



[m,n] =size(C)
res=C(m-2:end,n-1:end)


A=100:999;
res=find(rem(A,21)==0)
length(res)
test='AjsidBudU'
a=find(test>='A'&test<='Z')
test(a)=[]



















