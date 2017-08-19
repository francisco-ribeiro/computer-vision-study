%%

function output = cvs_matrix_mask_crop(img, matrixMaskSize, matrixCellToCropCoordinates)
    imgSize = size(img);
    
    imgHeight = imgSize(1,1);
    imgWidth = imgSize(1,2);

    maskHeight = matrixMaskSize(1,1);
    maskWidth = matrixMaskSize(1,2);

    cellHeight = floor(imgHeight/maskHeight);
    cellWidth = floor(imgWidth/maskWidth);

    cellToCropRow = matrixCellToCropCoordinates(1,1);
    cellToCropColumn = matrixCellToCropCoordinates(1,2);

    cropingCoordinatesStopRow = cellToCropRow * cellHeight;
    cropingCoordinatesStartRow = cropingCoordinatesStopRow - cellHeight + 1;

    cropingCoordinatesStopColumn = cellToCropColumn * cellWidth;
    cropingCoordinatesStartColumn = cropingCoordinatesStopColumn - cellWidth + 1;

    output = img(cropingCoordinatesStartRow:cropingCoordinatesStopRow, cropingCoordinatesStartColumn:cropingCoordinatesStopColumn, :);
    
end

