% Test code:
dolphin = imread('dolphin.png');
bicycle = imread('bicycle.png');

%result = blend(dolphin, bicycle, 0.95);
%imshow(result); % note: will result in an error if blend() returns empty or incorrect value

alpha = 0.95; figure, imshow(blend(dolphin, bicycle, alpha));
alpha = 0.75; figure, imshow(blend(dolphin, bicycle, alpha));
alpha = 0.5; figure, imshow(blend(dolphin, bicycle, alpha));
alpha = 0.25; figure, imshow(blend(dolphin, bicycle, alpha));
alpha = 0.05; figure, imshow(blend(dolphin, bicycle, alpha));