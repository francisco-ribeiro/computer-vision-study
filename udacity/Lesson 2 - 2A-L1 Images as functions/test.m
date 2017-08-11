im = imread('peppers.png');
imgreen = im(:,:,2);
imshow(imgreen)
line([1 512], [256 256], 'color', 'r')
figure, plot(imgreen(256,':mat'));
