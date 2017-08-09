% Find template 2D

%% Set values to test
clear;

% % Index: 5
% s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
% t = [1 1 0];

%% Test code:
tablet = imread(getImagePath('tablet.png'));
figure, imshow(tablet);
glyph = tablet(75:165, 150:185);
figure, imshow(glyph);

normalizedCorrelation = normxcorr2(glyph, tablet);
[maxValue rawIndex] = max(normalizedCorrelation(:));
% disp('Max value:'), disp(maxValue);
% disp('Raw Index:'), disp(rawIndex);

find(normalizedCorrelation == maxValue)

[y x] = find_template_2D(glyph, tablet);
% disp([y x]); % should be the top-left corner of template in tablet

% Display matched area
figure
hAx  = axes;
imshow(tablet,'Parent', hAx);
rect = imrect(hAx, [x+1, y+1, size(glyph,2), size(glyph,1)]);
setColor(rect, 'green');