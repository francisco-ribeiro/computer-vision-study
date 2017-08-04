%%

function smoothed = gaussianFilter(noisy_img, filter_size, filter_sigma, edgeOption)
  if nargin < 4
     edgeOption = 'symmetric';
  end
  smoothed = imfilter(noisy_img, fspecial('gaussian', filter_size, filter_sigma), edgeOption);
end
