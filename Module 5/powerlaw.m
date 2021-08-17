clc
clear all
close all
a=imread('myna.jpg');
a=rgb2gray(a);
gamma=1.1;
d=double(a).^gamma;
imshow(a),title('original image')
figure,imshow(uint8(d)),title('Powerlaw transformation')
