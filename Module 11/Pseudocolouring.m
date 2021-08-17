%This Code performs pseudo-colouring
clc;
clear all;
input_img=imread('rice.tif');
[m n]=size(input_img);
input_img=double(input_img);
for i=1:m
    for j=1:n
        if input_img(i,j)>=0 & input_img(i,j)<50
            output_img(i,j,1)=input_img(i,j,1)+50;
            output_img(i,j,2)=input_img(i,j)+100;
            output_img(i,j,3)=input_img(i,j)+10;
        end
        if input_img(i,j)>=50 & input_img(i,j)<100
            output_img(i,j,1)=input_img(i,j)+35;
            output_img(i,j,2)=input_img(i,j)+128;
            output_img(i,j,3)=input_img(i,j)+10;
        end
        if input_img(i,j)>=100 & input_img(i,j)<150
            output_img(i,j,1)=input_img(i,j)+152;
            output_img(i,j,2)=input_img(i,j)+130;
            output_img(i,j,3)=input_img(i,j)+15;
        end
        if input_img(i,j)>=150 & input_img(i,j)<200
            output_img(i,j,1)=input_img(i,j)+50;
            output_img(i,j,2)=input_img(i,j)+140;
            output_img(i,j,3)=input_img(i,j)+25;
        end
        if input_img(i,j)>=200 & input_img(i,j)<=256
            output_img(i,j,1)=input_img(i,j)+120;
            output_img(i,j,2)=input_img(i,j)+160;
            output_img(i,j,3)=input_img(i,j)+45;
        end
    end
end
subplot(2,2,1),imshow(uint8(input_img)),title('Input Image')
subplot(2,2,2),imshow(uint8(output_img)),title('Pseudo Coloured Image')

