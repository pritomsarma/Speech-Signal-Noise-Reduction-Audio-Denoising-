clc; clear; close all;

%% Step 1: Generate Speech-like Signal
fs = 8000;                     % Sampling frequency
t = 0:1/fs:3;                  % 3 seconds duration

% Speech-like signal (multiple frequency components)
speech = sin(2*pi*300*t) ...   % low freq (vowel-like)
       + 0.6*sin(2*pi*600*t) ...
       + 0.4*sin(2*pi*1200*t);

% Envelope to mimic real speech variation
envelope = (sin(2*pi*1*t) + 1)/2;
speech = speech .* envelope;

%% Step 2: Add Noise
noise = 0.5 * randn(size(t));   % White noise
noisy_audio = speech + noise;

%% Step 3: Design Bandpass Filter (Speech range: 300–3400 Hz)
[b, a] = butter(4, [300 3400]/(fs/2), 'bandpass');

%% Step 4: Apply Filter
denoised_audio = filtfilt(b, a, noisy_audio);

%% Step 5: Plot Signals
figure;
subplot(3,1,1);
plot(t, speech);
title('Original Speech Signal');

subplot(3,1,2);
plot(t, noisy_audio);
title('Noisy Audio');

subplot(3,1,3);
plot(t, denoised_audio);
title('Denoised Audio (Bandpass Filter)');

%% Step 6: Play Audio
disp('Playing Noisy Audio...');
sound(noisy_audio, fs);
pause(4);

disp('Playing Denoised Audio...');
sound(denoised_audio, fs);
