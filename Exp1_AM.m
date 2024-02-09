% Clear workspace and close all figures
clear all;
close all;

% Define parameters
Am = 5; %Modulating Signal Amplitude
Ac = 2 %Carrier Signal Amplitude
fm = 10; % Modulating frequency (Hz)
fc = 100; % Carrier frequency (Hz) fc>>fm
t = 0:0.001:1; % Time vector

% Generate carrier signal
carrier = Ac * cos(2 * pi * fc * t);

% Generate modulating signal
modulating_signal = Am * sin(2 * pi * fm * t);

% Perform amplitude modulation
modulation_index = 0.5; % Modulation index <=1
AM_signal = (1 + modulation_index * modulating_signal) .* carrier;

% Plot original signals and AM signal
figure;
subplot(3, 1, 1);
plot(t, carrier, 'b');
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, modulating_signal, 'r');
title('Modulating Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, AM_signal, 'g');
title('AM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
