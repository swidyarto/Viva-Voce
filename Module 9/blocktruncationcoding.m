%This program performs BTC of the input image
x=imread('C:\Documents and Settings\esakki\Desktop\icecream.jpg');
x=rgb2gray(x);
x=imresize(x,[256 256]);
x=double(x);
x1=x;
[m1 n1]=size(x);
blk=input('Enter the block size:');
for i = 1 : blk : m1 
for j = 1 : blk : n1 
        y = x( i : i + (blk-1), j : j + (blk-1) ) ; 
        m = mean( mean ( y ) ); 
        sig=std2(y);
        b = y > m ; %the binary block 
        K = sum ( sum ( b ) ) ; 
               if (K ~= blk^2 ) & ( K ~= 0) 
                ml = m-sig*sqrt(K/((blk^2)-K)); 
                mu = m+sig*sqrt(((blk^2)-K)/K); 
                x(i : i + (blk-1), j : j + (blk-1) ) = b*mu + (1- b)*ml; 
        end 
end 
end 
imshow(uint8(x1)),title('Original image')
figure,imshow(uint8(x)),title('Reconstruced image'),
xlabel(sprintf('The block size is %g',blk))
