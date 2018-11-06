x=linspace(-5,5,21);
y=linspace(0,10,31);
[X,Y]=meshgrid(x,y);
z=cos(X).*cos(Y).*exp(-1*(X.^2+Y.^2).^0.5./4);
subplot(2,1,1)
%曲面图
surf(X,Y,z)
subplot(2,1,2)
%等高线图
meshc(X,Y,z)

% a=1:2
% b=2:3
% [A,B]=meshgrid(a,b)