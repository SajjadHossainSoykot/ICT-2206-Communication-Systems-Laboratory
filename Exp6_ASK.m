%Amplitude Shift keying...
clc;
close all;
clear all;
fc = 20; %Freq of Sine Wave carrier
fp = 4; %Enter the freq of Periodic Binary pulse (Message)
amp = 5; %Enter the amplitude (For Carrier & Binary Pulse Message
t = 0:0.001:1; % For setting the sampling interval

%For Generating Square wave message
m = amp / 2 * square(2 * pi * fp * t) + (amp / 2);
subplot(3, 1, 2);
plot(t, m);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulses');

% For Generating Carrier Sine wave
c = amp * sin(2 * pi * fc * t);
subplot(3, 1, 1);
plot(t, c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Wave');

% The Shift Keyed Wave
ask = c .* m;
subplot(3, 1, 3); %For Plotting The Amplitude Shift Keyed Wave
plot(t, ask);
xlabel('Time');
ylabel('Amplitude');
title('Amplitide Shifted Key Signal');
