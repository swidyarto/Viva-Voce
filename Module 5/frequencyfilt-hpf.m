%Frequency domain high pass filter
clc;
clear all;
close all;
a=imread('dewdrop.jpg');
[m n]=size(a);
mask=ones(m,n);
for i=150:180
    for j=210:240
        mask(i,j)=0;
    end
end
c=fft2(a);
d=fftshift(mask);
e=c.*d;
f=abs(ifft2(e));
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(mat2gray(f)),title('High pass filtered image')
subplot(2,2,3),imshow(mask),title('high pass filter mask')
subplot(2,2,4),imshow(d),title('Mask after fftshift operation')
