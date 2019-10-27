%du lieu thu
% I = zeros(2,2,3);
% I(1,1,1) = 1;
% I(1,2,1) = 0;
% I(2,1,1) = 0;
% I(2,2,1) = 1;
% 
% I(1,1,2) = 1;
% I(1,2,2) = 1;
% I(2,1,2) = 1;
% I(2,2,2) = 1;
% 
% I(1,1,3) = 1;
% I(1,2,3) = 1;
% I(2,1,3) = 0;
% I(2,2,3) = 1;

%I = imread('anh35x35.jpg');
I = imread('Lena.png');

k=24;

%goi ham cim2ind
[indexImage, lookupTable] = cimg2ind(I, k);

%goi ham ind2cimg
I2 = ind2cimg(indexImage, lookupTable);

subplot(2,1,1); imshow(I);
subplot(2,1,2); imshow(I2);
