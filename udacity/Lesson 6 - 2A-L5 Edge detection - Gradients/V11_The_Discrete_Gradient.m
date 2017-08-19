tiger = rgb2gray(imread('tiger_staring.png'));
left_gradiented = imfilter(tiger, [0 0 0; -0.5 0 0.5; 0 0 0 ], 'symmetric'); % horizontal derivative
right_gradiented = imfilter(tiger, [0 -0.5 0; 0 0 0; 0 0.5 0], 'symmetric'); % vertical derivative
borders = uint8(sqrt((double(left_gradiented) .* double(left_gradiented)) + (double(right_gradiented) .* double(right_gradiented))));
figure, imshowpair(tiger,left_gradiented,'montage');
figure, imshowpair(tiger,right_gradiented,'montage');
figure, imshowpair(tiger,borders,'montage');
disp('size of left_gradiented:'), disp(size(left_gradiented));
disp('size of borders:'), disp(size(borders));