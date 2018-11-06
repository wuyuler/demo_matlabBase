clc;
clear;
im = imread('Test_ImageProcess2_moon.tif');
histRef = twomodegauss(0.15,0.05, 0.75, 0.01,1, 0.07, 0.002);
hist    = imhist(im);               
cdf     = cumsum(hist) / numel(im); 
cdfRef  = cumsum(histRef) ;
M   = zeros(1,256);
for idx = 1 : 256
    [tmp,ind] = min(abs(cdf(idx) - cdfRef));%通过两个累积直方图距离最近的点,确定映射关系
    M(idx)    = ind-1;%下标是1-256,分别对应的灰度是0-255
end
test=double(im)+1;
imMatch = M(double(im)+1);%灰度值加1对应在1-256中映射的坐标,每个值都对应映射
 
figure;%显示原图像、匹配图像和匹配后的图像
subplot(1,3,1),imshow(im,[]);title('原图像');
subplot(1,3,3),imshow(imMatch,[]);title('匹配之后图像');
figure;%显示原图像、匹配图像和匹配后图像的直方图
subplot(3,1,1),imhist(im,64);title('原图像直方图');
subplot(3,1,3),imhist(uint8(imMatch),64);title('匹配之后图像直方图');
