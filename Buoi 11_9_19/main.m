% r = 200;
% g = 10;
% b = 10;
% dong = 150;
% cot = 250;
% 
% I = taoAnh(r, g, b, dong, cot);
% imshow(I);


dong = 75;
cot = 125;
I1 = taoAnh(255,0 , 0, dong, cot);
I2 = taoAnh(0, 255, 0, dong, cot);
I3 = taoAnh(0, 0, 255, dong, cot);
I4 = taoAnh(200, 10, 200, dong, cot);

I = taoAnh(0 ,0 ,0, dong * 2, cot * 2);

I(1:75,1:125,1) = I1(:,:,1);
I(1:75,1:125,1) = I2(:,:,1);
I(1:75,1:125,1) = I3(:,:,1);
I(1:75,1:125,1) = I4(:,:,1);
imshow(I);
