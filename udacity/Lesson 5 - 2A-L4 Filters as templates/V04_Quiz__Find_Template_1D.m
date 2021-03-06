% Find Template 1D

%% Set values to test
clear

% Index: 5
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0];

% Index: 3
% s = [-1 0 0 1 1 1 0 -1 -1 -1 0 0 0 -1];
% t = [0 1 1 1 0];

% Index: 2
% s = [-1 0 0 1 1 1 0 -1 -1 -1 0 0 0 -1];
% t = [0 0 1 1 1 0 -1];

% Index: 7
% s = [0 0 -1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
% t = [1 1 0];

%% Test code:
c = normxcorr2(t, s);

disp('Signal:'), disp([1:size(s, 2); s]);
disp('Template:'), disp([1:size(t, 2); t]);
disp('Correlation:'), disp([1:size(c, 2); c]);

index = cvs_find_template_1D(t, s);
disp('Index:'), disp(index);