I = imread('Lena.png');

I2 = I;

[soDong, soCot] = size(I(:,:,1));

buocNhayDong = 8;
buocNhayCot = 8;

% cach 1
for i=1:buocNhayDong:soDong
    for j=1:buocNhayCot:soCot 
        A = I(i:i+buocNhayDong-1, j:j+buocNhayCot-1);
        valueMean = mean(mean(A),2);
        I2(i:i+buocNhayDong-1, j:j+buocNhayCot-1) = valueMean;
    end
end

%cach 2
% for i=1:buocNhayDong:soDong
%     for j=1:buocNhayCot:soCot
%         avg = 0;
%         for k=1:buocNhayDong
%            for l=1:buocNhayCot
%                avg = avg + int16(I(i+k-1,j+l-1));
%            end
%         end
%         avg = avg / (buocNhayDong * buocNhayCot);
%         for k=1:buocNhayDong
%            for l=1:buocNhayCot
%                I2(i+k-1,j+l-1) = avg;
%            end
%         end
%     end
% end

subplot(2, 1, 1); imshow(I);
subplot(2, 1, 2); imshow(I2);

I3 = I2(:,:,1);