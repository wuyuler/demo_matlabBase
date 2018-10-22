%单位冲激响应
%filter函数
a2=1;
b2=[0 0.25*ones(1,4)];
n=0:20;
x1=[1 zeros(1,20)]
s1filter=filter(b2,a2,x1);
subplot(3,1,1)
stem(n,s1filter);
title("系统2_单位冲激_filter");
xlabel('x');
ylabel('y');

%conv函数
x1=[1 zeros(1,10)]
h=impz(b2,a2,11);
s1conv=conv(h,x1);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("系统2_单位冲激_conv");

%使用impz函数
s1impz=impz(b2,a2,21);
subplot(3,1,3)
stem(n,s1impz)
title("系统1_单位冲激_impz");


%单位阶跃响应
%使用filter函数
x2=ones(1,21);
s1filter=filter(b2,a2,x2);
figure,
subplot(3,1,1)
stem(n,s1filter);
title("系统1_阶跃响应_filter");
xlabel('x');
ylabel('y');
%使用conv函数
x2=ones(1,21);
h=impz(b2,a2,21);
s1conv=conv(h,x2);
s1conv=s1conv(1:21);
subplot(3,1,2)
stem(n,s1conv,'filled')
title("系统1_阶跃响应_conv");

%使用impz函数
b=[0,0.25,0.5,0.75,ones(1,17)];
s1impz=impz(b,a2,21);
subplot(3,1,3)
stem(n,s1impz)
title("系统1_阶跃响应_impz");
