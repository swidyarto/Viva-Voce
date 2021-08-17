close all;
clear all;
clc;
a=imread('morph2.bmp');
b=[0 1 0;1 1 1;0 1 0];
a1=imdilate(a,b);
a2=imerode(a,b);
a3=a-a2;
a4=a1-a;
a5=a1-a2;
imshow(a),title('Original image')
figure,imshow(a1),title('Dilated image')
figure,imshow(a2),title('Eroded image')
figure,imshow(a3),title('First property ')
figure,imshow(a4),title('Second property')
figure,imshow(a5),title('Third Property')
