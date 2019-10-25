function result = taoAnh(r, g, b, row, col)

    RED = zeros(row, col);
    GREEN = zeros(row,col);
    BLUE = zeros(row,col);
    
    RED = RED + r;
    GREEN = GREEN + g;
    BLUE = BLUE + b;
    
    I = zeros(row, col,3);
    
    I(:,:,1) = RED;
    I(:,:,2) = GREEN;
    I(:,:,3) = BLUE;
    
    result = uint8(I);
    
end