% Apply a Gaussian filter to remove noise
img = imread('saturn.png');
imshow(img);
% disp(class(img));

% TODO: Add noise to the image
noise_sigma = 50;
noise = randn(size(img)) * noise_sigma;
% disp(class(noise));
noisy_img = uint8(double(img) + noise);
figure, imshow(noisy_img);

% TODO: Now apply a Gaussian filter to smooth out the noise
% pkg load image

filter_size = 11;
filter_sigma = 2;
figure, imshow(gaussianFilter(noisy_img, filter_size, filter_sigma));

filter_size = 31;
filter_sigma = 2;
figure, imshow(gaussianFilter(noisy_img, filter_size, filter_sigma));

filter_size = 31;
filter_sigma = 5;
figure, imshow(gaussianFilter(noisy_img, filter_size, filter_sigma));