a=imread('coconut.bmp');
%Conversion of RGB to YIQ format
b=rgb2ntsc(a);
%Histogram equalization of Y component alone
b(:,:,1)=histeq(b(:,:,1));
%Conversion of YIQ to RGB format
c=ntsc2rgb(b);
imshow(a),title('original image')
figure,imshow(c),title('Histogram equalized image')
