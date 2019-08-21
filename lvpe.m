function lvpe(I,or2,aa,bb)
x1 = imresize(I,[256 256]);
%imshow(I,[]);
%figure;
%x1=rgb2gray(I);
%imshow(x1,[]);
%figure;
x1=double(x1);
[a b]=size(x1);
or=zeros(aa,bb);
ark(1)=0;
for i=1:a-8
    for j=1:b-8
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
or22=or(:);
E_distance = sqrt(sum((or2-or22).^2));
disp(E_distance);