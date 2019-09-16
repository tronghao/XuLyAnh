function result = taoAnh(red, green, blue, row, col)
    %Tao 3 kenh mau
    RED = zeros(row, col);
    GREEN = zeros(row, col);
    BLUE = zeros(row, col);
    
    %thay doi gia tri kenh mau
    RED = RED + red;
    GREEN = GREEN +green;
    BLUE = BLUE + blue;
    
    %Tao anh
    I = zeros(row, col, 3);
    
    %gan gia tri 3 kenh mau cho anh
    I(:,:,1) = RED;
    I(:,:,2) = GREEN;
    I(:,:,3) = BLUE;
    
    %tra ket qua ve
    result = uint8(I);
end
