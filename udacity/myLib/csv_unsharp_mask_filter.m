%%

function sharped = csv_unsharp_mask_filter(img, edgeOption)
  if nargin < 4
     edgeOption = 'symmetric';
  end
  
  maskSize = [3 3];
  
  impulse = zeros(maskSize);
  impulse(2, 2) = 1; % center of mask
  
  blur = ones(maskSize) / 9;
  
  unsharpMask = (2 * impulse) - blur;
  
  sharped = imfilter(img, unsharpMask, edgeOption);
end
