clc
clear
x1=linspace(-5,0,100);
x2=linspace(0,5,100);
y1=(x1+pi^0.5)/exp(2);
y2=0.5*log(x2+(1+x2.^2).^0.5);
plot(x1,y1,x2,y2);