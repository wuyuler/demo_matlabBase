%���쵥��ͼ��
A=zeros(512,512);
A(246:266,230:276)=1;
col=2;
row=3;
subplot(col,row,1)
imshow(A,[]),title('������ͼ��');

subplot(col,row,2)
F=fft2(A);
S=abs(F);
imshow(S,[]);title('������(Ƶ������ԭ�������Ͻ�)')

subplot(col,row,3);
Fc=fftshift(F);
S2=abs(Fc);
imshow(S2,[])
title('������(Ƶ������ԭ������Ļ����)')

subplot(col,row,4);
S3=log(1+abs(Fc));
imshow(S3,[]);
title('������(������ʽ)')

subplot(col,row,5);
rev=ifft2(F);
imshow(rev,[])
title('������(����Ҷ���任)')

