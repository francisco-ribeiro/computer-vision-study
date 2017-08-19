%% Absolute difference error between two images with the same size

function output = cvs_absolute_difference_error(a, b)
    output = sum(sum(cvs_absolute_difference(a, b)));
end
