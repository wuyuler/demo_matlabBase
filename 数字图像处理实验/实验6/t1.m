clc
clear
%DFT滤波
f=imread('anna.jpg');
PQ=paddedsize(size(f));
F=fft2(f,PQ(1),PQ(2));

subplot(3,3,1)
imshow(f)
D0 = 0.05*PQ(1); 
%低通滤波
%理想

Hl_ideal=lpfilter('ideal',PQ(1),PQ(2),D0);
G1 = F.*Hl_ideal;
g1=real(ifft2(G1));
%BTW

Hl_btw=lpfilter('btw',PQ(1),PQ(2),D0,2);
G2=F.*Hl_btw;
g2 = real(ifft2(G2));
%GS

Hl_gaussian=lpfilter('gaussian',PQ(1),PQ(2),D0);
G3=F.*Hl_gaussian;
g3 = real(ifft2(G3));

gf1 = mat2gray(g1(1:size(f,1),1:size(f,2)));
gf2 = mat2gray(g2(1:size(f,1),1:size(f,2)));
gf3 = mat2gray(g3(1:size(f,1),1:size(f,2)));
subplot(3,3,4);imshow (gf1,[]);title('理想低通滤波结果');
subplot(3,3,5);imshow (gf2,[]);title('butworth低通滤波结果');
subplot(3,3,6);imshow (gf3,[]);title('高斯低通滤波结果');



%高通滤波
Hh_ideal=1-Hl_ideal;
Hh_btw=1-Hl_btw;
Hh_gs=1-Hl_gaussian;
G41=F.*Hh_ideal;
G51=F.*Hh_btw;
G61=F.*Hh_gs;
g41=abs(real(ifft2(G41)));
g51=abs(real(ifft2(G51)));
g61=abs(real(ifft2(G61)));
gf41 = mat2gray(g41(1:size(f,1),1:size(f,2)));
gf51 = mat2gray(g51(1:size(f,1),1:size(f,2)));
gf61 = mat2gray(g61(1:size(f,1),1:size(f,2)));
%理想
subplot(3,3,7)
imshow(gf41);title('理想高通滤波结果');
%BTW
subplot(3,3,8)
imshow(gf51);title('butworth高通滤波结果');
%GS
subplot(3,3,9)
imshow(gf61);title('高斯高通滤波结果');


%高频增强
Hh_ideal2=0.5+2*Hh_ideal;
Hh_btw2=0.5+2*Hh_btw;
Hh_gs2=0.5+2*Hh_gs;
G4=F.*Hh_ideal2;
G5=F.*Hh_btw2;
G6=F.*Hh_gs2;
g4=abs(real(ifft2(G4)));
g5=abs(real(ifft2(G5)));
g6=abs(real(ifft2(G6)));
gf4 = mat2gray(g4(1:size(f,1),1:size(f,2)));
gf5 = mat2gray(g5(1:size(f,1),1:size(f,2)));
gf6 = mat2gray(g6(1:size(f,1),1:size(f,2)));

figure
subplot(1,3,1)
imshow(gf4);title('高频增强后理想高通滤波结果');
subplot(1,3,2)
imshow(gf5);title('高频增强后butworth高通滤波结果');
subplot(1,3,3)
imshow(gf6);title('高频增强后高斯高通滤波结果');



figure,
%自编低通BTW
H_mylpbtw=mylpbtw2(PQ(1),PQ(2),D0,2);
F2=fftshift(F);
G7=F2.*H_mylpbtw;
G7=ifftshift(G7);
g7=real(ifft2(G7));
gf7=mat2gray(g7(1:size(f,1),1:size(f,2)));
subplot(2,1,1)
imshow(gf7);title('自编butworth低通滤波结果');
%自编高通滤波
H_myhpgs=myhpgs2(PQ(1),PQ(2),D0)
G8=F2.*H_myhpgs;
G8=ifftshift(G8);
g8=abs(real(ifft2(G8)));
gf8=mat2gray(g8(1:size(f,1),1:size(f,2)));
subplot(2,1,2)
imshow(gf8);title('自编高斯高通滤波结果');




