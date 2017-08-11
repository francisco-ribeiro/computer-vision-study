%%

function output = csv_get_image_path(imgName)
    [PATHSTR,NAME,EXT] = fileparts(mfilename('fullpath'));
    output = fullfile(PATHSTR, '..', 'images', imgName);
end
