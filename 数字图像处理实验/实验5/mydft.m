function [] = mydft()
    A=zeros(512,512);
    A(246:266,230:276)=1;
    [x,y] = size(A);
    Ax = ones(x,y);
    F = ones(x,y);
    com = 0+1i;
    % ��ÿһ�н���DFT
    for k =1:x        
        for m=1:y
            sn =0;
            for n =1:x
                sn =sn + A(n,m)*exp(-com*2*pi*k*n/x);
            end
            Ax(k,m) = sn;
        end
    end
    % ��ÿһ�н���DFT
    for l =1:y
        for k =1:x
            sn =0;
            for m=1:y
                sn = sn+Ax(k,m)*exp(-com*2*pi*l*m/y);
            end
            F(k,l) = sn;
        end
    end    
col=2;
row=2;

subplot(col,row,1)
imshow(A,[]),title('������ͼ��');

subplot(col,row,2)
S=abs(F);
imshow(S,[]);title('������(Ƶ������ԭ�������Ͻ�,�Ա�)')

subplot(col,row,3);
Fc=fftshift(F);
S2=abs(Fc);
imshow(S2,[])
title('������(Ƶ������ԭ������Ļ����,�Ա�)')

subplot(col,row,4);
S3=log(1+abs(Fc));
imshow(S3,[]);
title('������(������ʽ,�Ա�)')
end

