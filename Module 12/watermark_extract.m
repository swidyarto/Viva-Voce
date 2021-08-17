close all;
clear all;
clc
c1=imread('marking.tif');
figure,imshow(uint8(c1)),title('Marked Image');
i1=1;
j1=1;
d=zeros(32,32);
[m1 n1]=size(d);
jjj=1;
for ff=1:8,
    for i=1:32
        for j=j1:j1+n1-1,
            temp=bitand(c1(i,j),1);
            temp=temp*2^(ff-1);
            d(i,jjj)=d(i,jjj)+temp;
            jjj=jjj+1;
        end
        jjj=1;
    end
    j1=j1+32;
end
figure,imshow(uint8(d)),title('Extracted Mark');
 
