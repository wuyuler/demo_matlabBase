t=linspace(-pi,pi,100);
x=sin(3*t).*cos(t)
y=sin(3*t).*sin(t)
y1=2.*t-0.5

axis([-1,1,-1.5,1.5]);
plot(x,y,t,y1)

