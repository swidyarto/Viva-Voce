%This code performs logarthmic transformation
a=imread('crow.jpg');
L=255;
c=L/log10(1+L);
d=c*log10(1+double(a));
imshow(a),title('original image')
figure,imshow(uint8(d)),title('Log transformation image')

