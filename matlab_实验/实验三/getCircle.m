function [x,y] = getCircle(center,r)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
t=linspace(0,2*pi,100);
x=r.*cos(t)+center(1)
y=r.*sin(t)+center(2)
end

