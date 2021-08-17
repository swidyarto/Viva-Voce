close all;
clear all;
clc;
a=imread('morph2.bmp');
b=[1 1 1;1 1 1;1 1 1];
a1=imopen(a,b);
a2=imclose(a,b);
imshow(a),title('Original image')
figure,imshow(a1),title('Opened image')
figure,imshow(a2),title('Closed image')
