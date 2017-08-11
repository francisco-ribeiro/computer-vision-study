%% Absolute difference error between two images with the same size

function output = csv_absolute_difference_error(a, b)
    output = sum(sum(csv_absolute_difference(a, b)));
end
