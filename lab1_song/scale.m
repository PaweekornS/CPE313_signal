%--- play_scale.m
%---
% keys = [ 40 42 44 45 47 49 51 52 ];
keys = [52, 52, 54, 56, 52, 52, 52, 52, 51, 52, 54, 54, 49, 49, 49, 49, 52, 54, 49, 49, 49, 49, 52, 54, 54, 52];
%--- NOTES: C D E F G A B C
% key #40 is middle-C

% tone=output from calling note.m
% dur = 0.25 * ones(1,length(keys));
dur = [1, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.50, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25];
fs = 8000; %-- use 11025 Hz on PC/Mac, 8000 on UNIX
xx = zeros(1, 8*fs + 1);
start = 1;
for kk = 1:length(keys)
    keynum = keys(kk);
    
    tone = note(keynum, dur);%<=== FILL IN THIS LINE
    ending = start + length(tone) - 1;	
    xx(start:ending) = xx(start:ending) + tone;
    % disp(n2);

    start = ending;
end
sound( xx, fs )