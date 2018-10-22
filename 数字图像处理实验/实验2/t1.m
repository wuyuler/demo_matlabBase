%直方图均衡 调用函数
I=imread('lenna.bmp');
J=histeq(I);
subplot(2,2,1),imshow(I);title('原图');
subplot(2,2,2),imhist(I,64);title('原图-直方图');
subplot(2,2,3),imshow(J);title('直方图均衡化');
subplot(2,2,4), imhist(J,64);title('直方图均衡化-直方图');
