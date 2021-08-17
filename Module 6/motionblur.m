close all;
clear all;
clc;
a = imread(horse.jpg');
a=rgb2gray(a);
H = fspecial('motion',10,25);
MotionBlur_a = imfilter(a,H,'replicate');
imshow(a),title('Original Image'); 
figure,imshow(MotionBlur_a),title('Motion Blurred Image');
