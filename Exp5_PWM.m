%Pulse Width Modulation.....
clc;
close all;
clear all;
fm = 2; %frequency of modulating signal
fs = 5; %frequency of career sawtooth signal
Am = 2; %Amplitude of modulating signal
t = 0:0.0001:1; %sampling rate of 10kHz

%Message Signal.....
msg = Am * sin(2 * pi * fm * t);
subplot(3, 1, 1);
plot(t, msg);
title('Message Signal');

%Carrier Wave Signal(Sawtooth Signal)...
stooth = Am * sawtooth(2 * pi * fs * t); %generating a sawtooth wave
%to make the two non zero lobes of pwm not to overlap the amplitude of
%sawtooth wave must be atleast more than a bit to the message amplitude
subplot(3, 1, 2);
plot(t, stooth); % plotting the sawtooth wave
title('Pulse Carrier Wave');

pwm=zeros(size(t));
%Plotting the Pulse Width Modulation.....
for i = 1:length(t)

    if (msg(i) >= stooth(i))
        pwm(i) = 1; %is message signal amplitude at i th sample is greater than
        %sawtooth wave amplitude at i th sample
    else
        pwm(i) = 0;
    end

end

subplot(3, 1, 3);
plot(t, pwm, 'r');
title('PWM');
axis([0 1 0 1.1]); %to keep the pwm visible during plotting.