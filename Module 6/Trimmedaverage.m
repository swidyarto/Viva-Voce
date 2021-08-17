a=imread('girl512.bmp');
a=imresize(a,[256,256]);
s=1; 				% ‘S’ denotes the number of values to be 							left in the end
r=1;
N=9;   				 % Because 3*3 window
a=double(imnoise(a,'gaussian'));
[m n]=size(a);
b=zeros(m,n);
for i=2:m-1,
for j=2:n-1,
mat=[a(i,j),a(i,j-1),a(i,j+1),a(i-1,j),a(i+1,j),a(i-1,j-1),…
a(i-1,j+1),a(i-1,j+1),a(i+1,j+1)];
Sorted_mat=sort(mat);
Sum=0;
for k=r+s:(N-s),
Sum=Sum+mat(k);
end        
b(i,j)=Sum/(N-r-s);
end
end
imshow(uint8(a)),title('original image'),figure,
imshow(uint8(b)),title('Trimmed averaging filter');
