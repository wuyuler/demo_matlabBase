clc
clear
sub_m=3;
sub_n=3;

A=imread('lenna.bmp');
A=rgb2gray(A);
subplot(331)
imshow(A)
title('原图');
%给图像添加高斯白噪声
subplot(334)
A_gauss=imnoise(A,'gaussian');
imshow(A_gauss)
title('添加高斯白噪声');

subplot(337)
%给图像添加椒盐噪声
A_saltAndPepper=imnoise(A,'salt & pepper');
imshow(A_saltAndPepper);
title('添加椒盐噪声')

%使用matlab完成均值滤波
n=3;%滤波器模版大小
G_ave=fspecial('average',n);
A_gauss_after_ave=imfilter(A_gauss,G_ave);
subplot(335)
imshow(A_gauss_after_ave)
title('添加高斯白噪声后均值滤波');

A_sp_after_ave=imfilter(A_saltAndPepper,G_ave);
subplot(338)
imshow(A_gauss_after_ave)
title('添加椒盐噪声后均值滤波');

%使用matlab完成中值滤波
%边界采用镜像处理
%{
A_gauss_after_med1=medfilt2(A_gauss(:,:,1),[3 3]);%红
A_gauss_after_med2=medfilt2(A_gauss(:,:,2),[3 3]);%绿
A_gauss_after_med3=medfilt2(A_gauss(:,:,3),[3 3]);%蓝
A_gauss_after_med=A_gauss;
A_gauss_after_med(:,:,1)=A_gauss_after_med1;
A_gauss_after_med(:,:,2)=A_gauss_after_med2;
A_gauss_after_med(:,:,3)=A_gauss_after_med3;
%}
A_gauss_after_med=medfilt2(A_gauss,[3 3]);
subplot(336)
imshow(A_gauss_after_med)
title('添加高斯白噪声后中值滤波');

A_sp_after_med=medfilt2(A_saltAndPepper,[3 3]);
subplot(339)
imshow(A_sp_after_med)
title('添加椒盐噪声后中值滤波');





