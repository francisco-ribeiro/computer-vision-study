% Test code:
dolphin = imread('dolphin.png');
bicycle = imread('bicycle.png');

%result = cvs_blend(dolphin, bicycle, 0.95);
%imshow(result); % note: will result in an error if cvs_blend() returns empty or incorrect value

alpha = 0.95; figure, imshow(cvs_blend(dolphin, bicycle, alpha));
alpha = 0.75; figure, imshow(cvs_blend(dolphin, bicycle, alpha));
alpha = 0.5; figure, imshow(cvs_blend(dolphin, bicycle, alpha));
alpha = 0.25; figure, imshow(cvs_blend(dolphin, bicycle, alpha));
alpha = 0.05; figure, imshow(cvs_blend(dolphin, bicycle, alpha));