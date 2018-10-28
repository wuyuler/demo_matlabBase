clc
clear
sub_m=3;
sub_n=3;

A=imread('lenna.bmp');
A=rgb2gray(A);
subplot(3,5,1)
imshow(A)
title('原图');
%给图像添加高斯白噪声
subplot(3,5,6)
A_gauss=imnoise(A,'gaussian');
imshow(A_gauss)
title('添加高斯白噪声');

subplot(3,5,11)
%给图像添加椒盐噪声
A_saltAndPepper=imnoise(A,'salt & pepper');
imshow(A_saltAndPepper);
title('添加椒盐噪声')

%自编均值滤波
n=3;%滤波器模版大小
A_gauss_after_ave=myAve(A_gauss,n);
subplot(3,5,7)
imshow(A_gauss_after_ave)
title('添加高斯白噪声后均值滤波');

A_sp_after_ave=myAve(A_saltAndPepper,n);
subplot(3,5,12)
imshow(A_gauss_after_ave)
title('添加椒盐噪声后均值滤波');

%自编中值滤波
A_gauss_after_med=myMed(A_gauss,n);
subplot(3,5,8)
imshow(A_gauss_after_med)
title('添加高斯白噪声后中值滤波');

A_sp_after_med=myMed(A_saltAndPepper,n);
subplot(3,5,13)
imshow(A_sp_after_med)
title('添加椒盐噪声后中值滤波');

%自编最大值滤波
A_gauss_after_max=myMax(A_gauss,n);
subplot(3,5,9)
imshow(A_gauss_after_max)
title('添加高斯白噪声后最大值滤波');

A_sp_after_max=myMax(A_saltAndPepper,n);
subplot(3,5,14)
imshow(A_sp_after_max)
title('添加椒盐噪声后最大值滤波');

%自编最小值滤波
A_gauss_after_min=myMin(A_gauss,n);
subplot(3,5,10)
imshow(A_gauss_after_min)
title('添加高斯白噪声后最小值滤波');

A_sp_after_min=myMin(A_saltAndPepper,n);
subplot(3,5,15)
imshow(A_sp_after_min)
title('添加椒盐噪声后最小值滤波');