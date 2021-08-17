%This code is used to Butterworth highpass filter
close all;
clear all;
clc;
im=imread('d:\work\hibiscus.tif');
fc=40;
n=1;
[co,ro] = size(im);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
imf=fftshift(fft2(im));
H=zeros(co,ro);
for i = 1 : co
    for j =1 : ro
        d = (i-cx).^2 + (j-cy).^ 2;
        if d ~= 0
            H(i,j) = 1/(1+((fc*fc/d).^(2*n)));
        end;
 
    end;
end;
outf = imf .* H;
out = abs(ifft2(outf));
imshow(im),title('Original Image'),figure,imshow(uint8(out)),title('Highpass Filterd Image')
figure,imshow(H),title('2D View of H'),figure,surf(H),
title('3D View of H')
