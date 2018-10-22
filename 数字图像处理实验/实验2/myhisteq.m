clc;
clear;
close all;
I=imread('lenna.bmp');
[m,n]=size(I);
J=zeros(1,256);
%灰度值统计个数，存放在J中，第i列代表,像素值为i的个数为J(i);
for i=1:m
    for j=1:n
        k=I(i,j);
        J(k+1)=J(k+1)+1;
    end
end
%bar(J);可以用bar画出原始图像直方图（这里的直方图没有归一化）
subplot(2,2,1)
imshow(I);
subplot(2,2,2)
imhist(I);


%计算灰度级像素值个数的概率大小
Z=zeros(1,256);
for i=1:256
    Z(i)=J(i)/(m*n);
end

%计算累积分布函数
G=zeros(1,256);
G(1)=Z(1);
for i=2:256
    G(i)=G(i-1)+Z(i);
end
%上面计算累积分布函数，可以用函数cumsum（Z）代替
%累积分布函数取整，将其归一到1—256；
G=uint8(255*G+0.5);
%对图像进行均衡化
for i=1:m
    for j=1:n
        I(i,j)=G(I(i,j)+1);
    end
end
subplot(2,2,3)
imshow(I);
subplot(2,2,4)
imhist(I);
