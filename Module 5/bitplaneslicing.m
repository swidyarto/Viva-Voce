%This code is used to extract the bitplanes in the image
a=imread('penguin.jpg');
[m n]=size(a);
%To extract 7th bit plane
for i=1:m,
    for j=1:n,
        b7(i,j)=bitand(a(i,j),128);     
    end
end
%To extract 6th bit plane
for i=1:m,
    for j=1:n,
        b6(i,j)=bitand(a(i,j),64);     
    end
end
%To extract 5th bit plane
for i=1:m,
    for j=1:n,
        b5(i,j)=bitand(a(i,j),32);     
    end
end
%To extract 4th bit plane
for i=1:m,
    for j=1:n,
        b4(i,j)=bitand(a(i,j),16);     
    end
end
%To extract 3rd bit plane
for i=1:m,
    for j=1:n,
        b3(i,j)=bitand(a(i,j),8);     
    end
end
%To extract 2nd bit plane
for i=1:m,
    for j=1:n,
        b2(i,j)=bitand(a(i,j),4);     
    end
end
%To extract 1st bit plane
for i=1:m,
    for j=1:n,
        b1(i,j)=bitand(a(i,j),2);     
    end
end
%To extract 0th bit plane
for i=1:m,
    for j=1:n,
        b0(i,j)=bitand(a(i,j),1);     
    end
end
%Code to show the resultant images
subplot(2,2,1),imshow(a),title('original image'),
subplot(2,2,2),imshow(b5),title('5th bitplane image'),
subplot(2,2,3),imshow(b6),title('6th bitplane image'),
subplot(2,2,4),imshow(b7),title('7th bitplane image'),
 
