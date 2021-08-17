a=imread(‘lena.tif’);
a=imresize(a,[256,256]);
a=imnoise(a,’salt & pepper’, 0.2);%Add salt&pepper noise tothe image 
a=double(a);
[m n]=size(a);
N=input(‘enter the window size=’);%The window size can be 3x3,5x5etc
Start=(N+1)/2;
Out_Imag=a;
for i=Start?m-Start+1),
for j=Start?n-Start+1),
limit=(N-1)/2;
Sum=0;
for k=-limit:limit,
for l=-limit:limit,
Sum=Sum+a(i+k,j+l);
end
end
Out_Imag(i,j)=Sum/(N*N);
end
end
imshow(uint8(a)),title(‘original Image’),figure,
imshow(uint8(Out_Imag)),title(‘average filtered Image’);      
