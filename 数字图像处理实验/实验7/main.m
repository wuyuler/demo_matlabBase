clc
clear
f=imread('image1.tif');
[M,N]=size(f);
temp=rand(M,N);
%�Ӹ���Ϊ0.1�Ľ�����
temp1=find(temp<0.1);
fp=f;
fp(temp1)=0;
myfun1(fp,'�Ӹ���Ϊ0.1�Ľ�����')


%�Ӹ���Ϊ0.1������
temp2=find(temp>0.9);
fs=f;
fs(temp2)=255;
myfun1(fs,'�Ӹ���Ϊ0.1������')

%�ӽ�������
fs_p=f;
fs_p(temp1)=0;
fs_p(temp2)=255;
myfun1(fs_p,'�ӽ�������')
%�Ӿ�ֵΪ0,����Ϊ10�ĸ�˹����
fg=imnoise(f,'gaussian',0,10^2/255^2);


myfun1(fg,'�Ӹ�˹����')
%�Ӹ�˹��������
fgsp=imnoise(f,'gaussian');
fgsp=imnoise(fgsp,'salt & pepper',0.1);
myfun1(fg,'�Ӹ�˹��������')

figure
subplot(2,3,1)

imshow(fp)
title('�Ӹ���Ϊ0.1�Ľ�����')
subplot(2,3,2)
imshow(fs)
title('�Ӹ���Ϊ0.1������')
subplot(2,3,3)
imshow(fs_p)
title('�ӽ�������')
subplot(2,3,4)
imshow(fg)
title('�Ӹ�˹����')
subplot(2,3,5)
imshow(fgsp)
title('�Ӹ�˹��������')


