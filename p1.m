%fname: a string of the filename of the video you want to process
% the the video is not in the same folder, fname should include
% the absolute path to the file
fname = "C:\Users\htejada\GitHub\P1\IMG_9567.MOV";
%window_bounds: a MATLAB struct that indicates the boundaries of the
% window to use for averaging the pixel value.
window_bounds = struct();
window_bounds.top = 650;
window_bounds.bottom = 750;
window_bounds.left = 450;
window_bounds.right = 550;
%show_image: a boolean (0 or 1) that determines whether or not the video
% of the fidget spinner is displayed during processing
% set show_image to 1 if you are still trying to figure out
% the boundaries of the window to use
% set show_image to 0 to process the video faster
show_image = 1;
%Converts the video file of a fidget spinner to a time signal
%by computing the average pixel value in a window for each frame
%OUTPUTS:
%y: a list of the averaged pixel value in the window
%Fs: framerate of the video
[y,Fs] = video_to_signal(fname,window_bounds,show_image);

fname_save = 'C:\Users\htejada\GitHub\P1\IMG_9567.MOV.mat'; %should be a .mat file
save(fname_save,'y','Fs'); %save results from video_to_signal
S = load(fname_save,'y','Fs'); %load results from save file
y = S.y; Fs = S.Fs; %place values in variables y and Fs

