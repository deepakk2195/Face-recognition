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
or=zeros(aa,bb);
ark(1)=0;
for i=1:aa-8
    for j=1:bb-8
        k=1;
        ark=d1(ark,x1,i,j,k);
        k=9;
        ark=d2(ark,x1,i,j,k);
        k=17;
        ark=d3(ark,x1,i,j,k);
        k=25;
        ark=d4(ark,x1,i,j,k);
        for t=1:32
            or(i,j)=or(i,j)+ark(t).*(2.^(t));
        end
        
    end
end
%imshow(or,[]);
or2=or(:); 
srcFiles1=dir('F:\lvp\pics2\*.png');  
for i = 1 : length(srcFiles1)
     filename1 =strcat('F:\lvp\pics2\',srcFiles1(i).name);
    I = imread(filename1);
    %figure;
    %%imshow(I);
    lvpe(I,or2,aa,bb);
end
end