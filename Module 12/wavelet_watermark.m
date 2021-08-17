img  = imread('baby.bmp'); 
img  = rgb2gray(img);      
img=imresize(img,[300 300]);
img  = double(img);
c = 0.001; %Initialise the weight of Watermarking
figure,imshow(uint8(img)),title('Original Image');
[p q] = size(img);
p1=p;
q1=q;
%Generate the key 
n = rgb2gray(imread('keyimg1.png'));
key = imresize(double(n),[p q]);
figure,imshow(uint8(key)),title('Key');
[ca,ch,cv,cd] = dwt2(img,'db1');%Compute 2D wavelet transform
%Perform the watermarking
y = [ca ch;cv cd];
Y = y + c*key; 
p=p/2;q=q/2;
for i=1:p
    for j=1:q
        nca(i,j) = Y(i,j);
        ncv(i,j) = Y(i+p,j);
        nch(i,j) = Y(i,j+q);
        ncd(i,j) =  Y (i+p,j+q);
    end
end
%Display the Watermarked image
wimg = idwt2(nca,nch,ncv,ncd,'db1');
figure,imshow(uint8(wimg)),title('Watermarked Image');
%Extraction of key from Watermarked image
[rca,rch,rcv,rcd] = dwt2(wimg,'db1');%Compute 2D wavelet transform
n1=[rca,rch;rcv,rcd];
N1=n1-y;
figure,imshow(double(N1*4)),
title('Extract the key from watermarked image')
