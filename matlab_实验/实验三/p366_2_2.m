x=linspace(-2*pi,2*pi,9);
y1=x.^2;
y2=cos(2*x);
y3=y1.*y2;
subplot(311)
plot(x,y1,'r');
legend('y1=x^2')
subplot(312)
plot(x,y2,'b-.');
legend('y2=cos(2*x)')
subplot(313)
plot(x,y3,'g--');
legend('y3=y1*y2')