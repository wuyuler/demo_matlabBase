%基于2的蝶形结构的递推公式编程
N=64
n=0:2*N-1;
x1=cos(2*pi*7*n/N)+1/2*cos(2*pi*19*n/N);
Xk=fft(x1,2*N);
k=n;
stem(k,abs(Xk));
xlabel('k')
ylabel('|X(k)|')
title('X(k)=DFT[x(n)]2N')
%基于2的蝶形结构的递推公式编程
N=64
n=0:1:N-1;
a1=2*n %偶数
b2=2*n+1 %奇数
k=[0:1:N-1]
xa1=cos(2*pi*7*a1/N)+1/2*cos(2*pi*19*a1/N);
xb2=cos(2*pi*7*b2/N)+1/2*cos(2*pi*19*b2/N);
XK1=fft(xa1)
XK2=fft(xb2)
X1=XK1+exp(-j*pi*k/N).*XK2;
X2=XK1-exp(-j*pi*k/N).*XK2;
X1=[X1 zeros(1,N)];
X2=[zeros(1,N) X2];
XK=X1+X2;
k=[0:1:2*N-1]
XK=abs(XK)
stem(k,XK);grid











