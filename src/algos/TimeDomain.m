[data,fs ] = audioread('US Dial Tone.mp3');

data = data(:,1);
data = data(1:15000);
dt = 1/fs;
t = 0:dt:(length(data)*dt)-dt;
plot(t,data);
title('Time Domain Representation (US Dial Tone)');
xlabel('Time (Seconds)');
ylabel('Amplitude');

