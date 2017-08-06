% Apply a Median filter
% pkg load image;

%% Read an image
img = imread(getImagePath('moon.png'));
figure, imshow(img);

% Add salt & pepper noise
noisy_img = imnoise(img, 'salt & pepper', 0.02);
figure, imshow(noisy_img);

% Apply a median filter
median_filtered = medfilt2(noisy_img);
figure, imshow(median_filtered);

% Apply a gaussian filter
filter_size = 11;
filter_sigma = 2;
gaussian_filtered = gaussianFilter(noisy_img, filter_size, filter_sigma);
figure, imshow(gaussian_filtered);

% Analyse a line of the original image
[originalLine, originalImgWithLine] = centerLine(matrixMaskCrop(img, [2 1], [2 1]));
figure, imshow(originalImgWithLine);
originalLine(:, 1) = 300;
figure, plot(originalLine);

% Analyse a line of the noisy image
[noisyLine, noisyImgWithLine] = centerLine(matrixMaskCrop(noisy_img, [2 1], [2 1]));
noisyLine(:, 1) = 300;
figure, plot(noisyLine);

% Analyse a line of the median-filtered image
[filteredLine, filteredImgWithLine] = centerLine(matrixMaskCrop(median_filtered, [2 1], [2 1]));
filteredLine(:, 1) = 300;
figure, plot(filteredLine);

% Analyse a line of the gaussian-filtered image
[gaussianfilteredLine, gaussianfilteredImgWithLine] = centerLine(matrixMaskCrop(gaussian_filtered, [2 1], [2 1]));
gaussianfilteredLine(:, 1) = 300;
figure, plot(gaussianfilteredLine);