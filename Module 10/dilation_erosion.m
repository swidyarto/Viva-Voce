close all;
clear all;
clc;
a=imread('morph1.bmp');
b=[1 1 1;1 1 1;1 1 1];
a1=imdilate(a,b);
a2=imerode(a,b);
imshow(a),title('Original image')
figure,imshow(a1),title('Dilated image')
figure,imshow(a2),title('Eroded image')
