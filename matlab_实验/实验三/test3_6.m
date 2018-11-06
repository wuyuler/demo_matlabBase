clc;
clear;
x=linspace(-3,3,100);
y=linspace(-3,3,100);
[X,Y]=meshgrid(x,y);
z=-1.*(X.^2+Y.^2)./10;
surf(X,Y,z)