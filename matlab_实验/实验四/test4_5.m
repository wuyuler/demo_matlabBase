Z0=rand(5)
x=1:5;
[X0,Y0]=meshgrid(x);
subplot(121)
surf(X0,Y0,Z0);
x1=1:.1:5;
[X1,Y1]=meshgrid(x1);
Z1=interp2(X0,Y0,Z0,X1,Y1,'cubic');
subplot(122)
colormap('hsv');
%添加色柱。colorbar

shading interp 
%绘制15条等高线(hold , contour)

surf(X1,Y1,Z1);
colorbar;
hold on;
contour(X1,Y1,Z1,15)
title('计科161')
xlabel('1600200010')
ylabel('唐永金')