fname_save = '/Users/xavieryn/Downloads/IMG_9567.MOV.mat'; %should be a .mat file
save(fname_save,'y','Fs'); %save results from video_to_signal
S = load(fname_save,'y','Fs'); %load results from save file
y = S.y; Fs = S.Fs; %place values in variables y and Fs