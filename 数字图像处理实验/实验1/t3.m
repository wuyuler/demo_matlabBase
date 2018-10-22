%直方图均衡 调用函数
I=imread('lenna.bmp');
J=histeq(I);
subplot(4,2,1),imshow(I);title('原图');
subplot(4,2,2),imhist(I,64);title('原图-直方图');
subplot(4,2,3),imshow(J);title('直方图均衡化');
subplot(4,2,4), imhist(J,64);title('直方图均衡化-直方图');

p = twomodegauss(0.15,0.05, 0.75, 0.01,1, 0.07, 0.002);
plot(p);
g = histeq(f,p);
figure
subplot(4,2,5),imshow(f),title('原图');
subplot(4,2,6),imhist(f),title('原图-直方图');
subplot(4,2,7),imshow(g),title('高斯规定化');
subplot(4,2,8),imhist(g),title('高斯规定化-直方图');