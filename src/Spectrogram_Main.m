clear all;
[data1,fs1] = audioread('US Dial Tone.mp3');

% data1 = data1(1:705600,1);
S = STFT_Util(data1, fs1);