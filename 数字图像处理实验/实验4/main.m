
%A=imread('anna.jpg');
A=imread('Test_ImageProcess4_eight.tif');
%A=rgb2gray(A);
n=6;
subplot(2,3,1)
imshow(A);
title('原图');
i1=edge(A,'sobel');

subplot(2,3,2)
imshow(i1);
title('sobel算子');
i2=edge(A,'roberts');
subplot(2,3,3)
imshow(i2);
title('roberts算子');
i3=edge(A,'prewitt');
subplot(2,3,4)
imshow(i3);
title('prewitt算子');


mask=[0,1,0;1,-4,1;0,1,0];%拉普拉斯滤波模板
A2=im2double(A);%原图是一幅uint8类图像，输出结果仍为uint8类，所有像素均为正值，而拉普拉斯滤波模板中存在负值，变换结果中的所有负值被截掉了。
i4=imfilter(A2,mask,'replicate');
subplot(2,3,5)
imshow(i4);
title('Laplacien算子');


i5=edge(A,'log');
subplot(2,3,6)
imshow(i5);
title('log算子');


A1=imread('image2.jpg');
A1=rgb2gray(A1);
figure,
subplot(1,3,1)
imshow(A1);
title('原图');

j1=edge(A1,'sobel','horizontal');
subplot(1,3,2)
imshow(j1);
title('水平边缘检测');

j2= edge(A1,'sobel','vertical');
subplot(1,3,3)
imshow(j2);
title('垂直边缘检测');



