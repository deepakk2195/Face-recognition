clear all;
clc;
srcFiles=dir('F:\lderp\pics1\*.jpg');  
for i = 1 : length(srcFiles)
     filename =strcat('F:\lderp\pics1\',srcFiles(i).name);
x=imread('mandela.jpg');
x = imresize(x,[256 256]);
%imshow(x,[]);
%figure;
x1=rgb2gray(x);
%imshow(x1,[]);
%figure;
x1=double(x1);
[aa bb]=size(x1);
or=zeros(aa+2,bb+2);
or1=zeros(aa,bb);
ark(1)=0;
for i=2:aa+1
    for j=2:bb+1
        or(i,j)=x1(i-1,j-1);
    end
end
for i=1:aa-1
    for j=1:bb-1
        k=1;
        ark=zdeg(ark,or,i,j,k);
        k=9;
        ark=fdeg(ark,or,i,j,k);
        k=17;
        ark=ndeg(ark,or,i,j,k);
        k=25;
        ark=odeg(ark,or,i,j,k);
        for t=1:32
             or1(i,j)=or1(i,j)+ark(t).*(2.^(t));
        end
        
    end
end
%imshow(or1,[]);
or2=or1(:); 

srcFiles1=dir('F:\lderp\pics2\*.png');  
for i = 1 : length(srcFiles1)
     filename1 =strcat('F:\lderp\pics2\',srcFiles1(i).name);
    I = imread(filename1);
    %figure;
    %%imshow(I);
    lderpe(I,or2,aa,bb);
end
end