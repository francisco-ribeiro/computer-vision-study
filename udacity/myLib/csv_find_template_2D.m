%%

function [yIndex xIndex] = csv_find_template_2D(template, img)
    matchPrecision = 0.000001; % precision as "0.000001" returns 2 peaks; precision as "0.0000001" returns only 1 peak

    normalizedCorrelation = normxcorr2(template, img);
    [maxValue rawIndex] = max(normalizedCorrelation(:));
    [ypeak, xpeak] = find(normalizedCorrelation >= maxValue-matchPrecision);

    % Compute translation from max location in correlation matrix
    yoffSet = ypeak - size(template, 1) + 1;
    xoffSet = xpeak - size(template, 2) + 1;
    
    % - to return only one peak, find the one that "errors" less
    % - how to calculate the error: scalar sum of absolute difference
    differences = zeros(size(yoffSet));
    for i=1:size(yoffSet,1)
        differences(i, 1) = csv_absolute_difference_error(template, img(yoffSet(i, 1):yoffSet(i,1)+size(template, 1)-1, xoffSet(i,1):xoffSet(i,1)+size(template, 2)-1));
    end
    
    [minValue rawIndex] = min(differences(:));
    yIndex = yoffSet(rawIndex, 1);
    xIndex = xoffSet(rawIndex, 1);
end
