function max = maxValue(RGB, dong, cot)    
    max = RGB(1,1);
    for i=1:dong
        for j=1:cot
            if(RGB(i, j) > max)
                max = RGB(i, j);
            end
        end
    end
end