% Parameters
fc = 24;        % Carrier frequency
fp = 4;         % Frequency of Periodic Binary pulse (Message)
amp = 5;        % Amplitude (For Both Carrier & Binary Pulse Message)
t = 0:0.001:1;  % Time vector

% Generate Carrier Sine wave
c = amp * sin(2 * pi * fc * t);

% Generate Binary Message Pulses
m = amp / 2 * square(2 * pi * fp * t) + amp / 2;

% Generate PSK Signal
for i = 1:length(t)
    if m(i) == 0
        psk_signal(i) = c(i); % No phase shift for '0' bit
    else
        psk_signal(i) = -c(i); % Phase shift by 180 degrees for '1' bit
    end
end

% Plotting
subplot(3, 1, 1); % Carrier wave
plot(t, c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Wave');

subplot(3, 1, 2); % Binary Message Pulses
plot(t, m);
ylim([0, amp]);
xlabel('Time');
ylabel('Amplitude');
title('Binary Message Pulses');

subplot(3, 1, 3); % PSK Signal
plot(t, psk_signal);
xlabel('Time');
ylabel('Amplitude');
title('PSK Signal');