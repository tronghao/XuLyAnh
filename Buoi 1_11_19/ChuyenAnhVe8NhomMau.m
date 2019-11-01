I = imread('Lena.png');
R = I(:, :, 1);
G = I(:, :, 2);
B = I(:, :, 3);

%tinh trung b?nh kênh màu, giá tr? nh? nh?t, giá tr? l?n nh?t 
%và trung b?nh các ðo?n min -> mean -> max
meanR = mean(R);
minR = min(min(R));
    %min(R) m?ng nh? nh?t các c?t. 
    %min(min(R): nh? nh?t c?a các giá tr? nh? nh?t c?a c?t
maxR = max(max(R));
R1 = meanPhanDoan(R, minR, meanR);
R2 = meanPhanDoan(R, meanR, maxR);

meanG = mean(G);
minG = min(min(G));
maxG = max(max(G));
G1 = meanPhanDoan(G, minG, meanG);
G2 = meanPhanDoan(G, meanG, maxG);

meanB = mean(B);
minB = min(min(B));
maxB = max(max(B));
B1 = meanPhanDoan(B, minB, meanB);
B2 = meanPhanDoan(B, meanB, maxB);

%Chuy?n I thành Inew (8 màu)
Inew = I;
[dong, cot] = size(Inew(:, :, 1));
for i=1:dong
   for j=1:cot
       %x? l? R
       if(abs(Inew(i,j,1) - R1) > abs(R2 - Inew(i,j,1)))
           Inew(i,j,1) = R2;
       else
           Inew(i,j,1) = R1;
       end
       %x? l? G
       if(abs(Inew(i,j,2) - G1) > abs(G2 - Inew(i,j,2)))
           Inew(i,j,2) = G2;
       else
           Inew(i,j,2) = G1;
       end
       %x? l? B
       if(abs(Inew(i,j,3) - B1) > abs(B2 - Inew(i,j,3)))
           Inew(i,j,3) = B2;
       else
           Inew(i,j,3) = B1;
       end
   end
end

subplot(2,1,1); imshow(I);
subplot(2,1,2); imshow(Inew);

RInew = Inew(:,:,1);
GInew = Inew(:,:,2);
BInew = Inew(:,:,3);





% %Chuy?n I thành Inew (2 màu)
% Inew = I;
% [dong, cot] = size(Inew(:, :, 1));
% for i=1:dong
%    for j=1:cot
%        %x? l? R
%        if(abs(Inew(i,j,1) - R1) > abs(R2 - Inew(i,j,1)))
%            Inew(i,j,1) = R2;
%        else
%            Inew(i,j,1) = R1;
%        end
%        %x? l? G
%        if(abs(Inew(i,j,2) - G1) > abs(G2 - Inew(i,j,2)))
%            Inew(i,j,2) = G1;
%        else
%            Inew(i,j,2) = G1;
%        end
%        %x? l? B
%        if(abs(Inew(i,j,3) - B1) > abs(B2 - Inew(i,j,3)))
%            Inew(i,j,3) = B1;
%        else
%            Inew(i,j,3) = B1;
%        end
%    end
% end
% 
% subplot(2,1,1); imshow(I);
% subplot(2,1,2); imshow(Inew);
% 
% RInew = Inew(:,:,1);
% GInew = Inew(:,:,2);
% BInew = Inew(:,:,3);