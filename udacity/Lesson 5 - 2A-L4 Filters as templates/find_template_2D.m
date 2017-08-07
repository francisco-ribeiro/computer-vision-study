%%

function [yIndex xIndex] = find_template_2D(template, img)
    % TODO: Find template in img and return [y x] location
    normalizedCorrelation = normxcorr2(template, img);
    [maxValue rawIndex] = max(normalizedCorrelation);
    found = rawIndex - size(template, 2) + 1;
end
