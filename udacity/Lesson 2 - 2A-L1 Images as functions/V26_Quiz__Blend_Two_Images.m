% Test code:
dolphin = imread('dolphin.png');
bicycle = imread('bicycle.png');

%result = csv_blend(dolphin, bicycle, 0.95);
%imshow(result); % note: will result in an error if csv_blend() returns empty or incorrect value

alpha = 0.95; figure, imshow(csv_blend(dolphin, bicycle, alpha));
alpha = 0.75; figure, imshow(csv_blend(dolphin, bicycle, alpha));
alpha = 0.5; figure, imshow(csv_blend(dolphin, bicycle, alpha));
alpha = 0.25; figure, imshow(csv_blend(dolphin, bicycle, alpha));
alpha = 0.05; figure, imshow(csv_blend(dolphin, bicycle, alpha));