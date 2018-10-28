function f=myMin(image,n)
p=size(image);
image1=double(image);
image2=image1;
for i=1:p(1)-n+1
    for j=1:p(2)-n+1
        model=image1(i:i+n-1,j:j+n-1);
        image2(i+(n-1)/2,j+(n-1)/2)=getElement(model,'min');
    end
end
f=uint8(image2);