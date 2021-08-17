%Frequency domain Low pass filter
clc;
clear all;
close all;
a=imread('dewdrop.jpg');
[m n]=size(a);
mask=zeros(m,n);
for i=150:180
    for j=210:240
        mask(i,j)=1;
    end
end
c=fftshift(mask);
b=fft2(a);
d=b.*c;
e=abs(ifft2(d));
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(uint8(e)),title('Low pass filtered image')
subplot(2,2,3),imshow(mask),title('Low pass filter mask')
