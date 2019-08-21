clear all;
clc;
srcFiles=dir('F:\lbp\pics1\*.jpg');  
for i = 1 : length(srcFiles)
     filename =strcat('F:\lbp\pics1\',srcFiles(i).name);
x=imread('mandela.jpg');
x = imresize(x,[256 256]);
%imshow(x,[]);
%figure;
x1=rgb2gray(x);
%imshow(x1,[]);
%figure;
x1=double(x1);
[a b]=size(x1);
dia=zeros(a-2,b-2);
for i=1:a-2
    for j=1:b-2
        k=1;
        for j1=0:2
           i1=0;
           if x1(i+i1,j+j1)>=x1(i+1,j+1)
               ar(k)=1;
               k=k+1;
           else
               ar(k)=0;
               k=k+1;
           end
        end
        for i1=1:2
            j1=2;
            if x1(i+i1,j+j1)>=x1(i+1,j+1) 
               ar(k)=1;
               k=k+1;
           else
               ar(k)=0;
               k=k+1;
           end
        end
        for j1=1:-1:0
            i1=2;
          if x1(i+i1,j+j1)>=x1(i+1,j+1)
               ar(k)=1;
               k=k+1;
           else
               ar(k)=0;
               k=k+1;
           end
        end
       if x1(i+1,j)>=x1(i+1,j+1)
               ar(k)=1;
               k=k+1;
           else
               ar(k)=0;
               k=k+1;
       end 
      dia(i,j)=((ar(1).*1)+(ar(2).*2)+(ar(3).*4)+(ar(4).*8)+(ar(5).*16)+(ar(6).*32)+(ar(7).*64)+(ar(8).*128));   
    end
end
%imshow(dia,[]);
%figure;
for i=1:256
     D(i)=0;
end
for i=1:a-2
for j=1:b-2    
t=dia(i,j);
D(t+1)=D(t+1)+1;
end
end
%plot(D);
srcFiles1=dir('F:\lbp\pics2\*.png');  
for i = 1 : length(srcFiles1)
    filename1 =strcat('F:\lbp\pics2\',srcFiles1(i).name);
    I = imread(filename1);
    %figure;
    %imshow(I);
    lbpe(I,D);
end
end