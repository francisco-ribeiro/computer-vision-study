% Explore edge options
% pkg load image;

%% Load an image
img = imread('fall-leaves.png');
% figure, imshow(img);

%% TODO: Create a Gaussian filter and Apply it, specifying an edge parameter (try different parameters)
filter_size = 31;
filter_sigma = 2;

figure, imshow(cvs_zoom(cvs_matrix_mask_crop(cvs_gaussian_filter(img, filter_size, filter_sigma, 0), [4 4], [4 1]), 4));
figure, imshow(cvs_zoom(cvs_matrix_mask_crop(cvs_gaussian_filter(img, filter_size, filter_sigma, 255), [4 4], [4 1]), 4));
figure, imshow(cvs_zoom(cvs_matrix_mask_crop(cvs_gaussian_filter(img, filter_size, filter_sigma, 'circular'), [4 4], [4 1]), 4));
figure, imshow(cvs_zoom(cvs_matrix_mask_crop(cvs_gaussian_filter(img, filter_size, filter_sigma, 'replicate'), [4 4], [4 1]), 4));
figure, imshow(cvs_zoom(cvs_matrix_mask_crop(cvs_gaussian_filter(img, filter_size, filter_sigma, 'symmetric'), [4 4], [4 1]), 4));
