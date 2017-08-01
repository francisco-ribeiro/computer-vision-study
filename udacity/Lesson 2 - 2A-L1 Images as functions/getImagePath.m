%%

function output = getImagePath(imgName)
    [PATHSTR,NAME,EXT] = fileparts(mfilename('fullpath'));
    output = fullfile(PATHSTR, '..', 'images', imgName);
end
