%%

function smoothed = gaussianFilter(noisy_img, filter_size, filter_sigma)
  smoothed = imfilter(noisy_img, fspecial('gaussian', filter_size, filter_sigma));
end
