clc
clear
f=@(x) -1*(x(1).^0.5+x(1).^0.5+x(2).^0.5+x(3).^0.5+x(4).^0.5);
x0=[0.5;0.5;0.5;0.5];
%线性不等式约束
A=[1,0,0,0;1.07,1,0,0;1.1449,1.07,1,0;1.07^3,1.07^2,1.07,1];
b=[400,400*1.07,400*1.07^2,400*1.07^3];
option=optimset;
[x,f]=fmincon(f,x0,A,b,[],[],[],[],[],option)
