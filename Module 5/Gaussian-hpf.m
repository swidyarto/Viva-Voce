%This code is used to gaussian highpass filter
close all;
clear all;
clc;
im=imread('temp.tif');
fc=100;
imf = fftshift(fft2(im));
[co,ro]=size(im);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
H = zeros(co,ro);
for i = 1 : co
    for j = 1 : ro
        d = (i-cx).^2 + (j-cy).^2;
        H(i,j) = exp(-d/2/fc/fc);
    end;
end;
%     H = gaussian_filter(co,ro, fc);
H = 1-H;
out = zeros(co,ro);
outf= imf.*H;
out=abs(ifft2(outf));
imshow(im),title('Original Image'),figure,imshow((out)),title('Filterd Image')
figure,imshow(H),title('2D View of H'),figure,surf(H),
title('3D View of H')

