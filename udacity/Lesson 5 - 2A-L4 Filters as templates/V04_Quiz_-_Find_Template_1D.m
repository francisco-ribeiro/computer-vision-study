s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];
% t = [0 1 1 1 0];
c = normxcorr2(t, s);

disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);
disp('Correlation:'), disp([1:size(c, 2); c]);