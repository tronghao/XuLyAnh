dong = 3;
cot = 3;

I1 = taoAnh(255, 0, 0, dong, cot);
I2 = taoAnh(0, 255, 0, dong, cot);
I3 = taoAnh(0, 255, 255, dong, cot);
I4 = taoAnh(129, 0, 135, dong, cot);

I = taoAnh(0, 0, 0, dong * 2, cot * 2);

I(1:dong, 1:cot,1) = I1(1:dong, 1:cot,1);
I(1:dong, cot+1:cot*2,1) = I2(1:dong, 1:cot,1);
I(dong+1:dong*2, 1:cot,1) = I3(1:dong, 1:cot,1);
I(dong+1:dong*2, cot+1:cot*2,1) = I4(1:dong, 1:cot,1);

% chiSo_i = 1;
% chiSo_j = 1;
% 
% 
% for i=1:dong*2
%   for j=1:cot*2
%     if(i<=75 && j<=125)
%         I(i,j,1) = I1(chiSo_i,chiSo_j,1);
%         I(i,j,2) = I1(chiSo_i,chiSo_j,2);
%         I(i,j,3) = I1(chiSo_i,chiSo_j,3);
%     end
%     if(i<=75 && j>125)
%         I(i,j,1) = I2(chiSo_i,chiSo_j,1);
%         I(i,j,2) = I2(chiSo_i,chiSo_j,2);
%         I(i,j,3) = I2(chiSo_i,chiSo_j,3);
%     end
%     if(i>75 && j<=125)
%         I(i,j,1) = I3(chiSo_i,chiSo_j,1);
%         I(i,j,2) = I3(chiSo_i,chiSo_j,2);
%         I(i,j,3) = I3(chiSo_i,chiSo_j,3);
%     end
%     if(i>75 && j>125)
%         I(i,j,1) = I4(chiSo_i,chiSo_j,1);
%         I(i,j,2) = I4(chiSo_i,chiSo_j,2);
%         I(i,j,3) = I4(chiSo_i,chiSo_j,3);
%     end
%     
%     if(chiSo_i == 75)
%             chiSo_i = 1;
%     end
%     if(chiSo_j == 125)
%         chiSo_j = 1;
%     end
%     chiSo_i = chiSo_i + 1;
%     chiSo_j = chiSo_j + 1;
%     
%   end
% end
    
imshow(I);