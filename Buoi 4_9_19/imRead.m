I = imread('lena.png');

% imshow(I);

I1 = I(:,:,1);
I2 = I(:,:,2);
I3 = I(:,:,3);
% imshow(I1);

%--ham subplot(dong, cot, oThu)

%-- 2 tam, 1 tren, 2 duoi
% subplot(2,1,1);
% imshow(I);
% 
% subplot(2,1,2);
% imshow(I1);


%-- 4 tam, 1 trai tren, 2 phai tren, 3 trai duoi, 4 phai duoi
% subplot(2,2,1);
% imshow(I);
% 
% subplot(2,2,2); 
% imshow(I1);
% 
% subplot(2,2,3); 
% imshow(I2);
% 
% subplot(2,2,4); 
% imshow(I3);

%-- tang sang lighter
Inew = I;
IXuLy = Inew(:,:,1);
congThem = 30;
[soDong, soCot] = size(IXuLy);
%lighter
for i=1:soDong
    for j=1:soCot
        IXuLy(i,j) = IXuLy(i,j) + congThem;
    end
end

Inew(:,:,1) = IXuLy;

subplot(2,1,1);
imshow(I);

subplot(2,1,2);
imshow(Inew);
