function [a,b] = meanPhanDoan(RGB, dong, cot, min, max)    
    sum=0;
    soLuong = 0;
    for i=1:dong
        for j=1:cot
            if(RGB(i, j) > min)
                if(RGB(i, j) < max)
                    sum = sum + int16(RGB(i, j));
                    soLuong = soLuong + 1;
                end
            end
        end
    end
    a = sum;
    b= soLuong;
end