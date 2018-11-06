function f=myfun(imagefile,method)
A=imread(imagefile);
switch method
    case 'neg'
        %反变换
        G1=imadjust(A,[0 1],[1 0]);
        %G1=intrans(A,'neg');
        subplot(1,2,1)
        imshow(G1);
        subplot(1,2,2)
        imhist(G1)
    case 'log'
        %对数变换
        %G2=intrans(A,'log',5,2);
        G21=mat2gray(A);
        G2=log(1+double(G21));
        G2=im2uint8(G2);
         subplot(1,2,1)
        imshow(G2);
        subplot(1,2,2)
        imhist(G2)
    case 'gamma'
        %gamma变换
        G3=intrans(A,'gamma',2);
        subplot(1,2,1)
        imshow(G3);
        subplot(1,2,2)
        figure,imhist(G3)
    case 'stretch'
        %对比度拉伸变换
        G4=intrans(A,'stretch',0.5,2);
        subplot(1,2,1)
        imshow(G4);
        subplot(1,2,2)
        figure,imhist(G4)
    otherwise
   error('Unknown enhancement method.')
end
