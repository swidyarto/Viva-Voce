RGB=imread('mixedfruit.bmp');
R=RGB;
G=RGB;
B=RGB;
R(:,:,2)=0;
R(:,:,3)=0;
G(:,:,1)=0;
G(:,:,3)=0;
B(:,:,1)=0;
B(:,:,2)=0;
subplot(2,2,1),imshow(RGB),title('original image')
subplot(2,2,2),imshow(R),title('Red Component')
subplot(2,2,3),imshow(G),title('Green Component')
subplot(2,2,4),imshow(B),title('Blue Component')
