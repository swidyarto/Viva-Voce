clear all;
close all;
clc;
n=input('Enter the basis matrix dimension: ');
m=n;
for u=0:n-1
    for v=0:n-1
        for x=0:n-1
            for y=0:n-1
                powervalue=0;
                sn=log2(n);
                for i=0:sn-1
                    a=dec2bin(x,sn);
                    b=bin2dec(a(sn-i));
                    c=dec2bin(y,sn);
                    d=bin2dec(c(sn-i));
                    e=dec2bin(u,sn);
                    f=bin2dec(e(sn-i));
                    e=dec2bin(v,sn);
                    a=bin2dec(e(sn-i));
                    powervalue=powervalue+(b*f+d*a);
                end
                basis{u+1,v+1}(x+1,y+1)=(-1)^powervalue;
            end
        end
    end
end
    mag=basis;
figure(4)
k=1;
%Code to plot Haar basis
for i=1:m
    for j=1:n
        subplot(m,n,k)
        imshow(mag{i,j},256)
        k=k+1;
    end
end
