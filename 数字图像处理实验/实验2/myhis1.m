f=imread('Test_ImageProcess2_moon.tif')
myhist=imhist(f)
h=imhist(f)./numel(f);%每个灰度级的像素个数除以总的像素个数
c=cumsum(h);%求累积概率密度
[row,col] = size(f);
g=f;
for i = 1:row
    for j = 1:col
       g(i,j)=c(f(i,j)+1,1)*255;
    end
end
figure;
subplot(221);imshow(f);title('原图');
subplot(222);imhist(f,64);title('');
subplot(223);imshow(g);title('均衡化');
subplot(224);imhist(g,64);title('');