clc
clear all
close all
a=imread('babyelephant.jpg');
h=fspecial('unsharp');
b=imfilter(a,h);
imshow(a),title('original image')
figure,imshow(b),title('Unsharp mask')

