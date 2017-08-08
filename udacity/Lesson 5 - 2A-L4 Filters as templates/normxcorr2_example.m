% Load images
peppers = imread('montage2.png');
% peppers = rgb2gray(imread('peppers.png'));
onion   = rgb2gray(imread('onion.png'));
% imshowpair(onion,peppers,'montage');
% imsave;

matchPrecision = 0.000001; % precision as "0.000001" returns 2 peaks; precision as "0.0000001" returns only 1 peak

c = normxcorr2(onion,peppers);
% figure, surf(c), shading flat

[maxValue rawIndex] = max(c(:));
[ypeak, xpeak] = find(c >= maxValue-matchPrecision);
% [ypeak, xpeak] = find(c==max(c(:)));

% Compute translation from max location in correlation matrix
yoffSet = ypeak-size(onion,1);
xoffSet = xpeak-size(onion,2);

% Display matched area
figure
hAx  = axes;
imshow(peppers,'Parent', hAx);
for i=1:size(xoffSet, 1)
    rect = imrect(hAx, [xoffSet(i, 1)+1, yoffSet(i, 1)+1, size(onion,2), size(onion,1)]);
    setColor(rect, 'green');
end