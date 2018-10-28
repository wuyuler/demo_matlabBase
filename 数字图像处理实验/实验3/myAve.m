%image是需要滤波的图像,n是滤波模板的大小,即nXn
function f=myAve(image,n)
a(1:n,1:n)=1;
p=size(image);
image1=double(image);
image2=image1;
for i=1:p(1)-n+1
    for j=1:p(2)-n+1
        c=image1(i:i+n-1,j:j+n-1).*a;%从i,j开始取模板大小的元素点乘模版
        s=sum(sum(c));%求c矩阵各元素的和
        image2(i+(n-1)/2,j+(n-1)/2)=s/(n*n);%将均值赋给模版中心位置的元素
    end
end
f=uint8(image2);
        

