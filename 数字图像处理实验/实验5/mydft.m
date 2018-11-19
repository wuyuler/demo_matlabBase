function [] = mydft()
    A=zeros(512,512);
    A(246:266,230:276)=1;
    [x,y] = size(A);
    Ax = ones(x,y);
    F = ones(x,y);
    com = 0+1i;
    % 对每一列进行DFT
    for k =1:x        
        for m=1:y
            sn =0;
            for n =1:x
                sn =sn + A(n,m)*exp(-com*2*pi*k*n/x);
            end
            Ax(k,m) = sn;
        end
    end
    % 对每一行进行DFT
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
imshow(A,[]),title('单狭缝图像');

subplot(col,row,2)
S=abs(F);
imshow(S,[]);title('幅度谱(频谱坐标原点在左上角,自编)')

subplot(col,row,3);
Fc=fftshift(F);
S2=abs(Fc);
imshow(S2,[])
title('幅度谱(频谱坐标原点在屏幕中央,自编)')

subplot(col,row,4);
S3=log(1+abs(Fc));
imshow(S3,[]);
title('幅度谱(对数方式,自编)')
end

