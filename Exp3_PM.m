modulation_index= 5; 
t=0:0.001:1; %Time Vector

Am=1; %Amplitude of Modulating Signal
fm=2; %Frequency of Modulating Signal
phase_m=0;
message_signal=Am*sin(2*pi*fm*t+phase_m);

subplot(3,1,1);
plot(t,message_signal);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

Ac=1; %Amplitude of Carrier Signal
fc=20; %Frequency of Carrier Signal
phase_c=0;
carrier_signal=Ac*sin(2*pi*fc*t+phase_c);

subplot(3,1,2);
plot(t,carrier_signal);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude')

PM_signal=Ac*cos(2*pi*fc*t+modulation_index*cos(2*pi*fm*t+phase_m));

subplot(3,1,3);
plot(t,PM_signal);
title('PM Signal');
xlabel('Time (s)');
ylabel('Amplitude');