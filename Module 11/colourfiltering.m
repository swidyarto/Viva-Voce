clc;
close all;
clear all;
a=imread('sunflower.jpg');
yiq=rgb2ntsc(a);
%Extract the Y component alone
b1=yiq(:,:,1);
h=[-1 -1 -1;-1 8 -1;-1 -1 -1];
%Perform high pass filtering only on Y component
c1=conv2(b1,h,'same');
yiq(:,:,1)=c1;
% Convert YIQ to RGB format
a1=ntsc2rgb(yiq);
figure,imshow(a),title('original image')
figure,imshow(a1),title('High pass filtered image')

