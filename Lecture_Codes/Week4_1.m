
%% Define X

% x(n) = d(n) + d(n-1) + d(n-2)

x =  [ 1 1 2];

%% Fast Fourier Transform
    
    % it took 3 points only because of the signal sample size
fft_x = fft(x);

% interesting function we cannot plot it 
% plot(fft_x)
% it has a magnitude and phase
figure
subplot(2,1,1);plot(abs(fft_x))
title('Magnitude Spectrum')
subplot(2,1,2);plot(angle(fft_x))
title('Phase Spectrum')

%% More points FFT

    % it took 256 points
    % MATLAB samples the frequency axis and plots at N=256 samples.
fft_x = fft(x,256);

dw = 2*pi/256; % N=256 means, MATLAB divides the period into 256 parts

% w = [ 0 dw 2dw 3dw ... 2_pi-dw]
w = 0:dw:2*pi

% interesting function we cannot plot it 
% plot(fft_x)
% it has a magnitude and phase
figure
subplot(2,1,1);plot(abs(fft_x))
title('Magnitude Spectrum')
subplot(2,1,2);plot(angle(fft_x))
title('Phase Spectrum')

%% FFT Details

    % Remember DTFT is periodic with 2*pi
    % MATLAB plots only from 0 to 2*pi
    
%% Course CODES

% x(n) = d(n) + d(n-1) + 2d(n-2)

x = [1 1 2];

% matlab does zero-padding to get length(x) = 256
fft_x = fft(x, 256);

% remember that the DTFT is periodic with period 2*pi
%
% Matlab plots one period of DTFT from 0 to 2*pi
%
% Matlab samples the frequency axis and plots at N=256 samples

dw = 2*pi/256;

% w = [0 dw 2dw 3dw 4dw ... 2pi-dw]

w = [0:dw:2*pi-dw];

subplot(2,1,1);plot(w, abs(fft_x)); % magnitude spectrum
subplot(2,1,2);plot(w, angle(fft_x)); % phase spectrum



% These are the function that we found mathematically
mag_x = sqrt( (1+cos(w)+2*cos(2*w)).^2 + (sin(w)+2*sin(2*w)).^2 );
pha_x = atan( (-sin(w) - 2*sin(2*w)) ./ (1+cos(w)+2*cos(2*w)) );


subplot(2,1,1);plot(w, mag_x); % magnitude spectrum
subplot(2,1,2);plot(w, pha_x); % phase spectrum





