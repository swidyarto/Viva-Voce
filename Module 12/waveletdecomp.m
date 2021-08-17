clc
clear all
close all
a=imread('zoneplate.png');
%First level decomposition
[p q r s]=dwt2(single(a),'db1');
b=[uint8(p), q; r,s];
%Second level decomposition
[p1 q1 r1 s1]=dwt2(p,'db1');
b1=[p1,q1; r1, s1];
b2=[uint8(b1), q; r s];
imshow(b2)
