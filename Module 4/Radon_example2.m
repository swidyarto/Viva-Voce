clc
clear all
close all
a=zeros(256)
[m n]=size(a);
for i=1:m
    for j=1:n
        a(40,j)=255;
        a(80,j)=255;
        a(124,j)=255;
        a(150,j)=255;
    end
end
theta=0:180;
[p q]=radon(a,theta);
imshow(a),title('Input image')
figure,imshow(p,[],'Xdata',theta,'Ydata',q,'InitialMagnification','fit'),
title('Radon transform of input image'),
colormap(hot), colorbar
