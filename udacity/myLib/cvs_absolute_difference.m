%% Absolute difference between two images with the same size

function output = cvs_absolute_difference(a, b)
    output = (a - b) +  (b - a);
end
