clc
clear all
close all
%Generating a multi-point image
a=zeros(256);
[m n]=size(a);
a(50,50)=255;
a(100,100)=255;
a(142,142)=255;
a(225,225)=255;
%Computing Radon tranform for point image
theta=0:180;
[p q]=radon(a,theta);
subplot(2,2,1),imshow(a),title('Input image')
subplot(2,2,2),imshow(p,[],'Xdata',theta,'Ydata',q,'InitialMagnification','fit'),
title('Radon transform of input image'),
colormap(hot), colorbar
