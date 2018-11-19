N=64;
k=0:N-1;
X=1./(1-0.8*exp(-j*2*pi*k/N));
subplot(211)
stem(k,X);
title('X(k)')
x=ifft(X,N)
n=k;
subplot(212)
stem(n,abs(x));grid;
xlabel('n');
ylabel('x[n]');
title('x(n)=IDFT[X(k)]')
disp('xn������:');
disp(x);