%制程序求解下列两个系统的单位冲激响应和阶跃响应，并绘出其图形。要求分别用 filter、conv、impz三种函数完成。
%系统1

%单位冲激相应
%使用filter函数
a1=[1 0.75 0.125];
b1=[1 -1];
n=0:20
x1=[1 zeros(1,20)]
s1filter=filter(b1,a1,x1);
subplot(3,1,1)
stem(n,s1filter);
title("系统1单位冲激filter");
xlabel('x');
ylabel('y');


%使用conv函数
x1=[1 zeros(1,10)];
h=impz(b1,a1,11);
s1conv=conv(h,x1);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("系统1单位冲激conv");
xlabel('x');
ylabel('y');

%使用impz函数
s1impz=impz(b1,a1,21);
subplot(3,1,3)
stem(n,s1impz)
title("系统1单位冲激impz");
xlabel('x');
ylabel('y');

%单位阶跃响应
%使用filter函数
x2=ones(1,21);
s1filter=filter(b1,a1,x2);
figure,
subplot(3,1,1)
stem(n,s1filter);
title("系统1阶跃响应filter");
xlabel('x');
ylabel('y');
%使用conv函数
x2=ones(1,21);
h=impz(b1,a1,21);
s1conv=conv(h,x2);
subplot(3,1,2)
s1conv=s1conv(1:21)
stem(n,s1conv,'filled')
title("系统1阶跃响应conv");
xlabel('x');
ylabel('y');

%使用impz函数
b=1
s1impz=impz(b,a1,21);
subplot(3,1,3)
stem(n,s1impz)
title("系统1阶跃响应impz");
xlabel('x');
ylabel('y');








