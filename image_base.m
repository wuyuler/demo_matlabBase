%导入图片
image1=imread('image1.jpg');
imshow(image1)

%负片
% image1_1=imadjust(image1,[0,1],[1,0]);
% figure,imshow(image1_1);

%将彩色图片转化为灰度图片
image1_gray=rgb2gray(image1)
figure,imshow(image1_gray)
