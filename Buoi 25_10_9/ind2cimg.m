function cimg = ind2cimg(indimg,lut)
    [lengthRow, lengthCol] = size(indimg);
    row = int16(sqrt(lengthRow));
    col = int16(sqrt(lengthRow));
    %tao anh
    colorImg = zeros(row, col, 3);
    
    %gan gia tri lut cho anh
    chiSoLut = 1;
    for i=1:row
        for j=1:col
            colorImg(i, j, 1) = lut(chiSoLut, 1);
            colorImg(i, j, 2) = lut(chiSoLut, 2);
            colorImg(i, j, 3) = lut(chiSoLut, 3);
            chiSoLut = chiSoLut + 1;
        end
    end
    
    
    %tra ve gia tri
    cimg = uint8(colorImg);
end