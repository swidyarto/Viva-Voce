%Frequency domain band pass filter
clc;
clear all;
close all;
a=imread('dewdrop.jpg');
[m n]=size(a);
mask=zeros(m,n);
for i=130:220
    for j=200:300
        mask(i,j)=1;
    end
end
for i=150:190
    for j=230:270
        mask(i,j)=0;
    end
end
b=fftshift(mask);
b=fft2(a);
c=fftshift(mask);
d=b.*c;
e=abs(ifft2(d));
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(uint8(e)),title('Band pass filtered image')
subplot(2,2,3),imshow(mask),title('Band pass filter mask')
subplot(2,2,4),imshow(c),title('Mask after fftshift         
                                operation')

