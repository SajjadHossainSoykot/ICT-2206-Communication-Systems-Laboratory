clear;
close all;
Am = 1; % amplitude of message signal
Ac = 1; % amplitude
fm = 2; % frequency of message signal
fc = 20; % frequency of carrier signal
t = 0:0.001:1; % time vector
B = 5;
m = Am * sin(2 * pi * fm * t); % equation for message signal
c = Ac * sin(2 * pi * fc * t); % equation for carrier signal
y = Ac * sin(2 * pi * fc * t + B * (sin(2 * pi * fm * t))); % equation for frequency modulating signal

subplot(3, 1, 1);
plot(t, m);
title('message signal');
xlabel('time');
ylabel('amplitude');
grid on;

subplot(3, 1, 2);
plot(t, c);
title('carrier signal');
xlabel('time');
ylabel('amplitude')
grid on;

subplot(3, 1, 3);
plot(t, y);
title('frequency modulated signal');
xlabel('time');
ylabel('amplitude');
grid on;

fprintf('modulation index : %f', B); % answer will be shown at command window
