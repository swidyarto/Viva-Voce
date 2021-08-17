%This program performs inverse filtering 
close all;
clear all;
clc;
x =imread('C:\Documents and Settings\esakki\Desktop\flower2.jpg');
x=double(rgb2gray(x));
[M N]=size(x);
h = ones(11,11)/121;
sigma = sqrt(4*10^(-7));
freqx = fft2(x);% Fourier transform of input image
freqh = fft2(h,M,N);%Fourier transform of degradation
y = real(ifft2(freqh.*freqx));
freqy = fft2(y);
powfreqx = freqx.^2/(M*N);
alpha = 0.5;%Indicates inverse filter 
freqg = ((freqh.')').*abs(powfreqx) ...
    ./(abs(freqh.^2).*abs(powfreqx)+alpha*sigma^2);
Resfreqx = freqg.*freqy;
Resa = real(ifft2(Resfreqx));
imshow(uint8(x)),title('Original Image')
figure,imshow(uint8(y)),title('Degraded Image')
figure,imshow(uint8(Resa)),title('Restored Image')
