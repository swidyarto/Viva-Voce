clc
clear all
close all
x=[5 10; 15 20];	 %First signal x[m,n]
h=[3 6; 9 12];  	 %Second signal h[m,n]
h1=fliplr(h);    	%To fold the signal along column-wise
h2=flipud(h1);   	 %To fold the signal along row-wise
x1=fft2(x);      	%Fourier transform of x[m,n]
h3=fft2(h2);    	%Fourier transform of h[-m,-n];
y1=x1.*h3;    %Multiplication of spectrum of x[m,n] and h[-m,-n] to get Y [K,L]
y2=ifft2(y1);  
