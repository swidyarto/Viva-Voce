%Frequency domain band stop filter
clc;
clear all;
close all;
a=imread('dewdrop.jpg');
[m n]=size(a);
mask=ones(m,n);
for i=130:200
    for j=210:280
        mask(i,j)=0;
    end
end
for i=150:175
    for j=225:260
        mask(i,j)=1;
    end
end
b=fftshift(mask);
imshow(mask)
b=fft2(a);
c=fftshift(mask);
d=b.*c;
e=abs(ifft2(d));
subplot(2,2,1),imshow(a),title('original image')
subplot(2,2,2),imshow(uint8(e)),title('Band stop filtered image')
subplot(2,2,3),imshow(mask),title('Band stop filter mask')
subplot(2,2,4),imshow(c),title('Mask after fftshift operation')

