clc
clear
%quad
%m文件描述函数
[I,n]=quad(@t3_fun1,1,2)
%匿名函数
f=@(x)x.*exp(-0.5.*x);
[I2,n2]=quad(f,1,2)

%trapz
x=linspace(1,2,10000);
y=x.*exp(-0.5.*x);
trapz(x,y)

syms x a b
%用符号运算求解析解
f2=int(f,x,a,b)
v=subs(f2,{a,b},{1,2})
val=double(v)

