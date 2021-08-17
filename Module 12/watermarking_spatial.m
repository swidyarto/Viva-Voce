clear all
clc
close all
a=imread('cameraman.tif');
figure, imshow(a),title('Base Image');
b=imresize(rgb2gray(imread(psg1.jpg')),[32 32]);
[m1 n1]=size(b);
figure,imshow(b),title('Mark Image');
[m n]=size(a);
i1=1;
j1=1;
p=1
c=a;  iii=1;jjj=1;
for ff=1:8,
    for i=1:32,
        jjj=1;
        for j=j1:j1+n1-1,
            a(i,j)=bitand(a(i,j),254);% LSB of base image is set to zero.
            temp=bitand(b(i,jjj),2^(ff-1));%MSB of the mark is extracted.
            temp=temp/(2^(ff-1));
            c(i,j)=bitor(a(i,j),temp);%MSB of mark is inerted into the %LSB of the base.
            jjj=jjj+1;
        end
    end
    j1=j1+32;
end
figure,imshow(uint8(c)),title('Marked Image');
imwrite(c,'markimg.tif','tif');

