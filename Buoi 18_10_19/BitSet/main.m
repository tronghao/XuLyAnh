I = imread ('download.jpg');

Red = I(:,:,1);
Green = I(:,:,2);
Blue = I(:,:,3);

[d c] = size(Red);

for i = 1:d
    for j = 1:c
        Red(i,j) = XoaBit(Red(i,j),1,5);
        Green(i,j) = XoaBit(Green(i,j),1,5);
        Blue(i,j) = XoaBit(Blue(i,j),1,6);
    end
end

I_New = I;

I_New(:,:,1) = Red;
I_New(:,:,2)= Green;
I_New(:,:,3) = Blue;


        
subplot (1,2,1); imshow(I);
subplot (1,2,2); imshow(I_New);
