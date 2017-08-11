%% Blend two images

function output = csv_blend(a, b, alpha)
    output = (a .* alpha) + (b .* (1-alpha));
end
