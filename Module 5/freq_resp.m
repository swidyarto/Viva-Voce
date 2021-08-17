close all;
clear all;
clc;
[X,Y] = meshgrid(-pi:.09:pi);
Z =(1/9)*(1+2*cos(X)+2*cos(Y)+4*(cos(X).*cos(Y)));
surf(X,Y,Z),axis([-4 4,-4 4,-1 1])

