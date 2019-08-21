function lderpe(I,or2,aa,bb)
I = imresize(I,[256 256]);
%imshow(I,[]);
%figure;
%x1=rgb2gray(I);
%imshow(x1,[]);
%figure;
x1=double(I);
[a b]=size(x1);
or=zeros(a+2,b+2);
or1=zeros(aa,bb);
ark(1)=0;    
for i=2:a+1
    for j=2:b+1
        or(i,j)=x1(i-1,j-1);
    end
end
for i=1:a-1
    for j=1:b-1
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
or22=or1(:); 
 E_distance = sqrt(sum((or2-or22).^2));
disp(E_distance);