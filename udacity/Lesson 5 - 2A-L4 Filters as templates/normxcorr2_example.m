clear;

% Saving montage images
% peppers = imread('peppers.png');
% onion   = imnoise(imread('onion.png'), 'salt & pepper', 0.0001);
% imshowpair(onion,peppers,'montage');
% imsave;

% Load images
peppers = imread('montage2.png');
% peppers = rgb2gray(imread('montage3.png'));
% peppers = rgb2gray(imread('peppers.png'));
onion = rgb2gray(imread('onion.png'));

matchPrecision = 0.000001; % precision as "0.000001" returns 2 peaks; precision as "0.0000001" returns only 1 peak

c = normxcorr2(onion,peppers);
% figure, surf(c), shading flat

[maxValue rawIndex] = max(c(:));
[ypeak, xpeak] = find(c >= maxValue-matchPrecision);
% [ypeak, xpeak] = find(c==max(c(:)));

% Compute translation from max location in correlation matrix
yoffSet = ypeak - size(onion,1) + 1;
xoffSet = xpeak - size(onion,2) + 1;
disp('yoffSet:'), disp([1:size(yoffSet, 1); yoffSet.']);
disp('xoffSet:'), disp([1:size(xoffSet, 1); xoffSet.']);

[y x] = csv_find_template_2D(onion, peppers);
disp('y:'), disp(y);
disp('x:'), disp(x);
% yoffSet = zeros([1 1]);
% xoffSet = zeros([1 1]);
% yoffSet(1, 1) = y;
% xoffSet(1, 1) = x;

% Display matched area
figure
hAx  = axes;
imshow(peppers,'Parent', hAx);
for i=1:size(xoffSet, 1)
    rect = imrect(hAx, [xoffSet(i, 1)+1, yoffSet(i, 1)+1, size(onion,2), size(onion,1)]);
    setColor(rect, 'green');
end