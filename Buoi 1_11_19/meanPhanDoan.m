function mean = meanPhanDoan(img, min, max)    
    sum=double(0);
    soLuong = 0;
    [dong, cot] = size(img);
    img = double(img);
    for i=1:dong
        for j=1:cot
            if(img(i, j) > min)
                if(img(i, j) < max)
                    sum = sum + img(i, j);
                    soLuong = soLuong + 1;
                end
            end
        end
    end
    mean = (sum / soLuong);
end