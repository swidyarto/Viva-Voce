%This program is Pseudo inverse filtering 
close all;
clear all;
clc;
x = imread('C:\Documents and Settings\esakki\Desktop\flower2.jpg');
x=double(rgb2gray(x));
Thr_Freq=0.2;
mask_b=ones(11,11)/121;
[M N]=size(x);
[m1 n1]=size(mask_b);
freqa = fft2(x);
freqh = fft2(mask_b,M,N);
blurr_img = real(ifft2(freqh.*freqa))+25*randn(M,N);
in_aspec=fft2(blurr_img);
psf=zeros(M,N); 
psf(M/2+1-(m1-1)/2:...
    M/2+1+(m1-1)/2,N/2+1-(n1-1)/2:N/2+1+(n1-1)/2)=mask_b;
psf=fftshift(psf);
freq_res=fft2(psf);
Inv_filt=freq_res./((abs(freq_res)).^2+Thr_Freq);
y=real(ifft2(in_aspec.*Inv_filt));
imshow(uint8(x)),title('Original Image')
figure,imshow(uint8(blurr_img)),title('Degraded Image')
figure,imshow(uint8(y)),title('Restored Image')
