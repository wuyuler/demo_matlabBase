clc
clear
y=dsolve('x^2*D2y-x*Dy+y-x*log(x)','y(1)=1','Dy(1)=1','x')
ezplot(y,[1 10])
hold on


[x,y1]=ode45(@t8_fun1,[1 10],[1 1]);

plot(x,y1(:,1),'o',x,y1(:,2),'o')
