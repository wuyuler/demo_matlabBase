x=linspace(-2*pi,2*pi,9);
y1=x.^2;
y2=cos(2*x);
y3=y1.*y2;

hold on;
set(gca,'XTick',x);
label={'-2\pi','','-\pi','','0','','\pi','','2\pi'};
set(gca,'xTickLabel',label);
plot(x,y1,'r',x,y2,'b-.',x,y3,'g--');
axis([-2*pi,2*pi,-inf,inf]);
legend('计科161','唐永金','1600200010')
% xlabel('1600200010');
% ylabel('计科161');
% title('唐永金');
