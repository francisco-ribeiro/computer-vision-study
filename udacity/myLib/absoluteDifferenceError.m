%% Absolute difference error between two images with the same size

function output = absoluteDifferenceError(a, b)
    output = sum(sum((a - b) +  (b - a)));
end
