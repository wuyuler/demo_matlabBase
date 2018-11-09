clc
clear
p1=[1,2,4,0,5];
p2=[0,0,0,1,2];
p3=[0,0,1,2,3];

p=p1+p2+p3

x=roots(p)

A=[-1,1.2,-1.4;0.75,2,3.5;0,5,2.5];
p_A_ans=polyval(p,A)
%矩阵为自变量
p_A_ans2=polyvalm(p,A)