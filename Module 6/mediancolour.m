a=imread('pepper.tif');
N=input('enter the window size');
b=imresize(a,[256,256]);
b=imnoise(b,'salt & pepper' , .1);
[m n]=size(b);
R=b(:,:,1); G=b(:,:,2);B=b(:,:,3);
Out_R=Func_medianall(R,N);%Applying Median filter to ‘R’ plane	
Out_G=Func_medianall(G,N);
Out_B=Func_medianall(B,N);
Out_Image(:,:,1)=Out_R;
Out_Image(:,:,2)=Out_G;
Out_Image(:,:,3)=Out_B;
imshow(uint8(b)),title('noise added'),figure,
imshow(uint8(Out_Image)),title('average filtered')
