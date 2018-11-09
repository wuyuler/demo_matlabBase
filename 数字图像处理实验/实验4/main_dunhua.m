clc
clear

n=3;
A=imread('Test_ImageProcess4_eight.tif');
subplot(1,n,1)
imshow(A);
title('原图');
G_ave=fspecial('average',3);
A=imfilter(A,G_ave);
subplot(1,n,2)
imshow(A);
title('均值模糊后原图');

mask=[0,1,0;1,-4,1;0,1,0];%拉普拉斯滤波模板
A2=im2double(A);%原图是一幅uint8类图像，输出结果仍为uint8类，所有像素均为正值，而拉普拉斯滤波模板中存在负值，变换结果中的所有负值被截掉了。

i4=A2-imfilter(A2,mask,'replicate');
i4=im2uint8(i4);
subplot(1,n,3)
imshow(i4);
title('Laplacien算子');




