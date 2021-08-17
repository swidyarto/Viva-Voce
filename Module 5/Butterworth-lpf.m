%This code is used to Butterworth lowpass filter
close all;
clear all;
clc;
im=imread('d:\work\hibiscus.tif');
fc=20;%Cutoff frequency
n=1;
[co,ro] = size(im);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
imf=fftshift(fft2(im));
H=zeros(co,ro);
for i = 1 : co
    for j =1 : ro
        d = (i-cx).^2 + (j-cy).^ 2;
        H(i,j) = 1/(1+((d/fc/fc).^(2*n)));
    end;
end;
outf = imf .* H;
out = abs(ifft2(outf));
imshow(im),title('Original Image'),figure,imshow(uint8(out)),title('Lowpass Filterd Image')

