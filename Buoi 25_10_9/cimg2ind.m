function [indimg,lut] = cimg2ind(cimg,k)
    bit = k/3;
    maxLength = power(2, k);
    maxValue = power(2, bit);
    
    %lay dong, cot cua anh
    [row, col] = size(cimg(:,:,1));
    
    %tao 1 mang chua chi so index va 1 mang anh xa RGB cua anh
    indexImage = zeros(row * col ,1);
    lookupTable = zeros(row * col, 3);
    
    %tao bang tra cuu RGB va index
    lookup = zeros(maxLength, 3);
    
    %Khoi tao gia tri RGB cho bang tra cuu
    chiSoLookup = 1;
    for r=0:(maxValue-1)
       for g=0:(maxValue-1)
           for b=0:(maxValue-1)
               lookup(chiSoLookup, 1) = r;
               lookup(chiSoLookup, 2) = g;
               lookup(chiSoLookup, 3) = b;
               chiSoLookup = chiSoLookup + 1;
           end   
       end
    end

    %gan index va anh xa RGB cua anh vao mang indexImage va lookupTable
    runRow = 1;
    for i=1:row
        for j=1:col
           %lay gia tri RGB
           r = cimg(i, j, 1);
           g = cimg(i, j, 2);
           b = cimg(i, j, 3);
           %lay index gan vao indexImage
           indexImage(runRow,1) = (int32(r) * power(maxValue,2) + int32(g) * maxValue + int32(b)); 
           %lay RBG gan vao lookupTable
           lookupTable(runRow, 1) = r;
           lookupTable(runRow, 2) = g;
           lookupTable(runRow, 3) = b;
           runRow = runRow + 1;
        end
    end

    %tra ve gia tri
    indimg = indexImage;
    lut = lookupTable;
end