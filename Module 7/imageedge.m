% This program computes the edges in the image
clear all;
close all;
clc;
a=imread('deer1.jpg');
a=rgb2gray(a);
b=edge(a,'roberts');
c=edge(a,'sobel');
d=edge(a,'prewitt');
e=edge(a,'log');
f=edge(a,'canny');
imshow(a),title('Original Image')
figure,imshow(b),title('Roberts')
figure,imshow(c),title('Sobel')
figure,imshow(d),title('Prewitt')
figure,imshow(e),title('Log')
figure,imshow(f),title('Canny')
