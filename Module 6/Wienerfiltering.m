%This program is a wiener filter
close all;
clear all;
clc;
x = imread('C:\Documents and Settings\esakki\Desktop\flower2.jpg');
x=double(rgb2gray(x));
sigma = 50;
gamma = 1;
alpha = 1;% It indicates Wiener filter
[M N]=size(x);
h = ones(5,5)/25;
Freqa = fft2(x);
Freqh = fft2(h,M,N);
y = real(ifft2(Freqh.*Freqa))+25*randn(M,N);
Freqy = fft2(y);
Powy = abs(Freqy).^2/(M*N);
sFreqh = Freqh.*(abs(Freqh)>0)+1/gamma*(abs(Freqh)==0);
iFreqh = 1./sFreqh;
iFreqh = iFreqh.*(abs(Freqh)*gamma>1)...
    +gamma*abs(sFreqh).*iFreqh.*(abs(sFreqh)*gamma<=1);
Powy = Powy.*(Powy>sigma^2)+sigma^2*(Powy<=sigma^2);
Freqg = iFreqh.*(Powy-sigma^2)./(Powy-(1-alpha)*sigma^2);
ResFreqa = Freqg.*Freqy;
Resa = real(ifft2(ResFreqa));
imshow(uint8(x)),title('Original Image')
figure,imshow(uint8(y)),title('Degraded Image')
figure,imshow(uint8(Resa)),title('Restored Image')
 
