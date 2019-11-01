I = imread('Lena.png');
R = I(:, :, 1);
G = I(:, :, 2);
B = I(:, :, 3);

[dong , cot ] = size(R);

meanR = uint8(mean(R));
minR = minValue(R, dong, cot);
maxR = maxValue(R, dong, cot);
meanMinR = meanPhanDoan(R, dong, cot, minR, meanR);
meanMaxR = meanPhanDoan(R, dong, cot, meanR, maxR);


meanG = uint8(mean(G));
minG = minValue(G, dong, cot);
maxG = maxValue(G, dong, cot);
meanMinG = meanPhanDoan(G, dong, cot, minG, meanG);
meanMaxG = meanPhanDoan(G, dong, cot, meanG, maxG);

meanB = uint8(mean(B));
minB = minValue(B, dong, cot);
maxB = maxValue(B, dong, cot);
meanMinB = meanPhanDoan(B, dong, cot, minB, meanB);
meanMaxB = meanPhanDoan(B, dong, cot, meanB, maxB);


