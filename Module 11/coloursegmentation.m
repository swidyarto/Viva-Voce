clc
clear all
close all
a=imread('Tomato2.jpg');
%Conversion of RGB to YCbCr
b=rgb2ycbcr(a);
%Threshold is applied only to Cb component
mask=b(:,:,2)>120;
imshow(a),title('original image')
figure,imshow(mask),title('Segmented image')
