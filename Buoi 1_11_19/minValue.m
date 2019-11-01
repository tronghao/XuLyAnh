function min = minValue(RGB, dong, cot)    
    min = RGB(1,1);
    for i=1:dong
        for j=1:cot
            if(RGB(i, j) < min)
                min = RGB(i, j);
            end
        end
    end
end