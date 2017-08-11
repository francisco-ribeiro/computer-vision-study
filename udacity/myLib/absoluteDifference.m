%% Absolute difference between two images with the same size

function output = absoluteDifference(a, b)
    output = (a - b) +  (b - a);
end
