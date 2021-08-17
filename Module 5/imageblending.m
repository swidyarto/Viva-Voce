clc
clear all
close all
a=imread('cameraman.tif');
b=imread('lena.bmp');
b=imresize(b,[256 256]);
[m n]=size(a);
alpha1=input('Enter the value of alpha:');
alpha2=input('Enter the value of alpha:');
alpha3=input('Enter the value of alpha:');
alpha4=input('Enter the value of alpha:');
for i=1:m
    for j=1:n
        c1(i,j)=(1-alpha1)*a(i,j)+alpha1*b(i,j);
        c2(i,j)=(1-alpha2)*a(i,j)+alpha2*b(i,j);
        c3(i,j)=(1-alpha3)*a(i,j)+alpha3*b(i,j);
        c4(i,j)=(1-alpha4)*a(i,j)+alpha4*b(i,j);
    end
end
subplot (2,2,1),imshow(c1),title('Blended image')
xlabel(sprintf('alpha value is %g',alpha1))
subplot(2,2,2),imshow(c2),title('Blended image')
xlabel(sprintf('alpha value is %g',alpha2))
subplot(2,2,3),imshow(c3),title('Blended image')
xlabel(sprintf('alpha value is %g',alpha3))
subplot(2,2,4),imshow(c4),title('Blended image')
xlabel(sprintf('alpha value is %g',alpha4))
