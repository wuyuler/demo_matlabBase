clc
clear
x=1:10:101;
y=[0,1.0414,1.3222,1.4914,1.6128,1.7076,1.7853,1.8513,1.9085,1.9590,2.0043];
P=polyfit(x,y,5)
p_x_ans=polyval(P,x);

plot(x,y,x,p_x_ans);
legend('lgxÇúÏß','p(x)ÇúÏß')