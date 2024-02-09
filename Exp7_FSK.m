%Frequency Shift Keying...
clc;
close all;
clear all;
fc1 = 50; % freq of 1st Sine Wave carrier
fc2 = 20; % freq of 2nd Sine Wave carrier
fp = 5; % freq of Periodic Binary pulse (Message)
amp = 5; %amplitude (For Both Carrier & Binary Pulse Message
t = 0:0.001:1; % For setting the sampling interval

% For Generating 1st Carrier Sine wave
c1 = amp .* sin(2 * pi * fc1 * t);

% For Generating 2nd Carrier Sine wave
c2 = amp .* sin(2 * pi * fc2 * t);

subplot(4, 1, 1); %For Plotting The Carrier wave
plot(t, c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier 1 Wave');

subplot(4, 1, 2) %For Plotting The Carrier wave
plot(t, c2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier 2 Wave');

%For Generating Square wave message
m = amp / 2 * square(2 * pi * fp * t) + amp / 2;
subplot(4, 1, 3); %For Plotting The Square Binary Pulse (Message)
plot(t, m);
ylim([0, amp]);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulses');

for i = 1:length(t) %here we are generating the modulated wave

    if m(i) == 0
        fsk_signal(i) = c2(i);
    else
        fsk_signal(i) = c1(i);
    end

end

subplot(4, 1, 4); %For Plotting The Modulated wave
plot(t, fsk_signal);
xlabel('Time');
ylabel('Amplitude');
title('FSK Signal');
