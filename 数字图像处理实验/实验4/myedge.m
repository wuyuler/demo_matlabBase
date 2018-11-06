A=imread('image2.jpg');
A=rgb2gray(A);
mask=[-1,-2,-1;0,0,0;1,2,1];%sobel滤波模板
A2=im2double(A);%原图是一幅uint8类图像，输出结果仍为uint8类，所有像素均为正值，而拉普拉斯滤波模板中存在负值，变换结果中的所有负值被截掉了。
i4=imfilter(A2,mask,'replicate');
subplot(2,3,5)
imshow(i4);
title('sobel算子');