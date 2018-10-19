%2.	教材P362页 实验3 第1题
clc
clear
%接受输入
x=input('请输入一个4位整数:');
%调整各位的格式
x1=str2num(num2str(x)')'
x1=rem(x1+7,10)
t=x1(3);
x1(3)=x1(1);
x1(1)=t;
t=x1(2)
x1(2)=x1(4);
x1(4)=t;
x1


