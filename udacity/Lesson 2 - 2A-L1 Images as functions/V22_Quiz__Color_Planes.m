% Color planes
img = imread('fruit.png');
%imshow(img);

%disp(size(img));

% TODO: Select a color plane, display it, inspect values from a row
img_size = size(img);
%disp(size(img_size))
img_height = img_size(1,1);
img_width = img_size(1,2);
cropped_img = img(img_height/3:2*img_height/3,1:img_width/3,:);
figure, imshow(cropped_img);
cropped_img_red = cropped_img(:,:,1);
figure, imshow(cropped_img_red);
cropped_img_size = size(cropped_img_red);
cropped_img_red_height = cropped_img_size(1);
cropped_img_red_width = cropped_img_size(2);

cropped_img_red_height = cropped_img_red_height + 1; % to avoid rounding when divided by 2

line([1 cropped_img_red_width], [cropped_img_red_height/2 cropped_img_red_height/2], 'color', 'r');

cropped_img_red_middle_line = cropped_img_red(cropped_img_red_height/2, :);
figure, plot(cropped_img_red_middle_line);