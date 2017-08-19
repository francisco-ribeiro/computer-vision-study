%% Blend two images

function output = cvs_blend(a, b, alpha)
    output = (a .* alpha) + (b .* (1-alpha));
end
