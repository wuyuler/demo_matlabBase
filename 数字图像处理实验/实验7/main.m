clc
clear
f=imread('image1.tif');
[M,N]=size(f);
temp=rand(M,N);
%加概率为0.1的椒噪声
temp1=find(temp<0.1);
fp=f;
fp(temp1)=0;
myfun1(fp,'加概率为0.1的椒噪声')


%加概率为0.1盐噪声
temp2=find(temp>0.9);
fs=f;
fs(temp2)=255;
myfun1(fs,'加概率为0.1盐噪声')

%加椒盐噪声
fs_p=f;
fs_p(temp1)=0;
fs_p(temp2)=255;
myfun1(fs_p,'加椒盐噪声')
%加均值为0,方差为10的高斯噪声
fg=imnoise(f,'gaussian',0,10^2/255^2);


myfun1(fg,'加高斯噪声')
%加高斯椒盐噪声
fgsp=imnoise(f,'gaussian');
fgsp=imnoise(fgsp,'salt & pepper',0.1);
myfun1(fg,'加高斯椒盐噪声')

figure
subplot(2,3,1)

imshow(fp)
title('加概率为0.1的椒噪声')
subplot(2,3,2)
imshow(fs)
title('加概率为0.1盐噪声')
subplot(2,3,3)
imshow(fs_p)
title('加椒盐噪声')
subplot(2,3,4)
imshow(fg)
title('加高斯噪声')
subplot(2,3,5)
imshow(fgsp)
title('加高斯椒盐噪声')


