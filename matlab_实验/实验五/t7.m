clc
clear
[x,y]=ode45(@t7_fun1,[1,5],[0,0])
plot(x,y(:,1),'r',x,y(:,2),'o')