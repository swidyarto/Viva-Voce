clc
clear all
close all
%Step 1: Generation of straight line image
a=zeros(256);
[m n]=size(a);
for i=1:256
    for j=5:256
    a(128,j)=255;
    end
end
%Step 2: Computing Radon transform
theta=0:180;
[p q]=radon(a,theta);
subplot(2,2,1),imshow(a),title('Input image')
subplot(2,2,2),imshow(p,[],'Xdata',theta,'Ydata',q,'InitialMagnification','fit'),
title('Radon transform of input image'),
colormap(hot), colorbar
