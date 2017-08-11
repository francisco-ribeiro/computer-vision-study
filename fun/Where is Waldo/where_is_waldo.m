clear;

% Load images
whereiswaldo = imread('wallpapers/city/map.jpg');
whereiswaldo_gray = rgb2gray(whereiswaldo);
waldo = imread('wallpapers/city/waldo3.jpg');
waldo_gray = rgb2gray(waldo);

whereiswaldo_gray = unsharpMaskFilter(whereiswaldo_gray);
waldo_gray = unsharpMaskFilter(waldo_gray);

matchPrecision = 0.1; % precision as "0.000001" returns 2 peaks; precision as "0.0000001" returns only 1 peak
padding = 5;

c = normxcorr2(waldo_gray,whereiswaldo_gray);
% figure, surf(c), shading flat
% figure, imshow(c);

[maxValue rawIndex] = max(c(:));
[ypeak, xpeak] = find(c >= maxValue-matchPrecision);

% Compute translation from max location in correlation matrix
yoffSet = ypeak - size(waldo_gray,1) + 1;
xoffSet = xpeak - size(waldo_gray,2) + 1;

% Display matched area
figure
hAx  = axes;
imshow(whereiswaldo,'Parent', hAx);
for i=1:size(xoffSet, 1)
    rect = imrect(hAx, [xoffSet(i, 1)+1-padding, yoffSet(i, 1)+1-padding, size(waldo_gray,2)+padding, size(waldo_gray,1)+padding]);
    setColor(rect, 'green');
end