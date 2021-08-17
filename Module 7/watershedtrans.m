a=checkerboard(32);
a1=imnoise(a,'salt & pepper',0.1);
b=watershed(a,4);
b1=watershed(a1,4);
imshow(a),title('Original Image')
figure,imshow(a1),title('Noisy Image')
figure,imshow(b),title('Watershed of Original')
figure,imshow(b1),title('Watershed of Noisy Image')

