a=imread('cameraman.tif');
a=imnoise(a,'salt & pepper',.2);
a=double(a);
[m n]=size(a);
N=input('enter the window size='); 
Out_Imag=a;
if(mod(N,2)==1)
Start=(N+1)/2;
End=Start;
else
Start=N/2;
End=Start+1;
end
if(mod(N,2)==1)
limit1=(N-1)/2;
limit2=limit1;
else
limit1=(N/2)-1;
limit2=limit1+1;
end
for i=Start:(m-End+1),
for j=Start:(n-End+1),
I=1; 
for k=-limit1:limit2,
for l=-limit1:limit2,
mat(I)=a(i+k,j+l);
I=I+1;
end
end
mat=sort(mat);    %To sort the elements in the window
if(mod(N,2)==1)
Out_Imag(i,j)=(mat(((N^2)+1)/2));
else
Out_Imag(i,j)=(mat((N^2)/2)+mat(((N^2)/2)+1))/2;
end
end
end
imshow(uint8(a)),title('original Image'),figure,
imshow(uint8(Out_Imag)),title('median filtered Image');   
