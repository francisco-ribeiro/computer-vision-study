%%

function [line, imgWithLine] = csv_center_line(img)
    imgSize = size(img);
    imgHeight = imgSize(1,1);
    centerLineHeight = uint8(imgHeight / 2);
    
    line = img(centerLineHeight, :);
    
    imgWithLine = img;
    imgWithLine(centerLineHeight, :) = 0;
end

