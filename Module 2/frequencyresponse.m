close all;
clear all;
clc;
[X,Y] = meshgrid(-pi:.09:pi);
Z =2*cos(X)+2*cos(Y);
surf(X,Y,Z),
axis([-4 4,-4 4,-4 3])
