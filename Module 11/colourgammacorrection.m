close all;
clear all;
clc;
I=imread('deer4.jpg');
gamma=1;
max_intensity =255;%for uint8 image 
%Look up table creation
LUT = max_intensity .* ( ([0:max_intensity]./max_intensity).^gamma );
LUT = floor(LUT); 
%Mapping of input pixels into lookup table values
J = LUT(double(I)+1); 
imshow(I),title('original image');
figure,imshow(uint8(J)),title('Gamma corrected image')
xlabel(sprintf('Gamma value is %g', gamma))
