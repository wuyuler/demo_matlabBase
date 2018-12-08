%人口预测
clc
clear
ts=0:6;%x(0)是2000年 则x(10)是2010年 注意包含初始0
x0=[281.4]
[t,x]=ode45('popuFun',ts,x0)