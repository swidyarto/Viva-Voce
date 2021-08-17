%This program performs median filtering of the colour image
clc
clear all
close all
a=imread('C:\Documents and Settings\esakki\My Documents\My Pictures\f1.bmp');
b=imnoise(a,'salt & pepper',0.2);
c(:,:,1)=medfilt2(b(:,:,1));
c(:,:,2)=medfilt2(b(:,:,2));
c(:,:,3)=medfilt2(b(:,:,3));
imshow(a),title('original image')
figure,imshow(b),title('corrupted image')
figure,imshow(c),title('Median filtered image')

