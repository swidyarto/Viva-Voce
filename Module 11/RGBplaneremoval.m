clc
clear all
close all
a=imread('C:\Documents and Settings\esakki\My Documents\My Pictures\fl1.bmp');
a1=a;
b1=a;
c1=a;
a1(:,:,1)=0;
b1(:,:,2)=0;
c1(:,:,3)=0;
imshow(a),title('original image')
figure,imshow(a1),title('Red Missing!')
figure,imshow(b1),title('Green Missing!')
figure,imshow(c1),title('Blue Missing!')
