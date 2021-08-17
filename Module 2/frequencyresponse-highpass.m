close all;
clear all;
clc;
[X,Y]=meshgrid(-pi:.05:pi);
Z = 2-cos(X)-cos(Y);
surf(X,Y,Z),
axis([-4 4,-4 4,-0.5 4])

