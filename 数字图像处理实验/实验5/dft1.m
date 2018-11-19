%构造单缝图像
A=zeros(512,512);
A(246:266,230:276)=1;
col=2;
row=3;
subplot(col,row,1)
imshow(A,[]),title('单狭缝图像');

subplot(col,row,2)
F=fft2(A);
S=abs(F);
imshow(S,[]);title('幅度谱(频谱坐标原点在左上角)')

subplot(col,row,3);
Fc=fftshift(F);
S2=abs(Fc);
imshow(S2,[])
title('幅度谱(频谱坐标原点在屏幕中央)')

subplot(col,row,4);
S3=log(1+abs(Fc));
imshow(S3,[]);
title('幅度谱(对数方式)')

subplot(col,row,5);
rev=ifft2(F);
imshow(rev,[])
title('幅度谱(傅里叶反变换)')

