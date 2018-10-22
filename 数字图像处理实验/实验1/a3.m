function f=a3()
f=imread('anna.jpg')
h=imhist(f)./numel(f);
c=cumsum(h);
[row,col] = size(f);



g=f;
for i = 1:row
    for j = 1:col
       g(i,j)=c(f(i,j)+1,1)*255;
    end
end


figure;
subplot(221);imshow(f);title('Ô­Í¼');
subplot(222);imhist(f,64);title('');

subplot(223);imshow(g);title('¾ùºâ»¯');

subplot(224);imhist(g,64);title('');