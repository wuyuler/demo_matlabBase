function f=myfun(imagefile,method)
A=imread(imagefile);
switch method
    case 'neg'
        G1=imadjust(A,[0 1],[1 0])
        %G1=intrans(A,'neg');
        imshow(G1);
        figure,imhist(G1)
    case 'log'
        G2=intrans(A,'log',5,2);
        %G2=im2uint8(mat2gray(5*log(1+double(2))));
        imshow(G2);
        figure,imhist(G2)
    case 'gamma'
        G3=intrans(A,'gamma',2);
        imshow(G3);
        figure,imhist(G3)
    case 'stretch'
        G4=intrans(A,'stretch',2,2);
        imshow(G4);
        figure,imhist(G4)
    otherwise
   error('Unknown enhancement method.')
end
