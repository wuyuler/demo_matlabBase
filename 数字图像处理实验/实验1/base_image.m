
%读取图片
A1=imread('lenna.bmp');
%A2=imread('anna.jpg');
%A3=imread('goldhill.bmp');
%A4=imread('pepper.bmp');
figure;
subplot(1,2,1);
imshow(A1),title('原图')
subplot(1,2,2);
imhist(A1)
figure;
%反变换
subplot(4,2,1)
G1=intrans(A1,'neg');
imshow(G1),title('反变换后的图像');
subplot(4,2,2)
imhist(G1)
%对数变换
subplot(4,2,3)
G2=intrans(A1,'log',1);
imshow(G2),title('对数变换后的图像');
subplot(4,2,4)
imhist(G2)

%gamma变换
subplot(4,2,5)
G3=intrans(A1,'gamma',2);
imshow(G3),title('gamma变换后的图像');
subplot(4,2,6)
imhist(G3)

%对比度拉伸
subplot(4,2,7)
G4=intrans(A1,'stretch',0.5,4);
imshow(G4),title('对比度拉伸后的图像');
subplot(4,2,8)
imhist(G4)


