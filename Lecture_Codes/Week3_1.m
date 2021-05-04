
% x(n) = d(n) + d(n-1) + 2d(n-2)

x = [1 1 2];

% Remember that FT is periodic with period 2*pi
%
% Matlab Plots one period of DTFT from 0 to 2*pi
%
% Matlab samples the frequency axis and plots at N=256 samples

numberOfSamples= 256;

dw = 2*pi/numberOfSamples;
% 2 = [0 dw 2dw 3dw ... 2pi-dw]
w = 0:dw:2*pi-dw;


% Take fast fourier transform
fft_x = fft(x,numberOfSamples);

%fft_x = fft(x,256);
%                -> How many points that you want to take fft

% Magnitude 

% MANUEL
mag_x = sqrt( (1+cos(w)+cos(2*w)).^2 + (1+sin(w)+sin(2*w)).^2 );
hold on
plot(mag_x)


subplot(2,1,1);
plot(abs(fft_x),'b')

% Set title
title("Magnitude Spectrum")

% Set axis labels
xlabel('Frequency');
ylabel('Magnitude');


legend('Magnitude')

% Phase
subplot(2,1,2);
plot(angle(fft_x),'r')

% MANUEL
phase_x = atan( (-sin(w) -2*sin(2*w)) / (1+cos(w)+cos(2*w)));
hold on
plot(phase_x);

% Set title
title("Phase Spectrum")

% Set axis labels
xlabel('Frequency');
ylabel('Phase');


legend('Phase')

%%  OFFICIAL CODE

% y(n-1) + 2*y(n) = x(n) + 3*x(n-2) + x(n-3)


% initialize y and x to zero
y = zeros(31,1);
x = zeros(31,1);


% In matlab if you have x(n), n should be greater than 0.
% because of that we add a +1 to our indices.
x(1) = 1; % x(0)
x(2) = 1; % x(1) 


% create the memory buffers
x_buf = zeros(1,3); % x_buf = [x(n-1) x(n-2) x(n-3)]
y_buf = zeros(1,1); % y_buf = [y(n-1)]

% for n = 1:31
%     y(n) = 0.5*(x(n) + 3*x(n-2) + x(n-3) - y(n-1));
% end

for n = 1:31
    y(n) = 0.5*(x(n) + 3*x_buf(2) + x_buf(3) - y_buf);
    
    y_buf = y(n);
    
    x_buf = [x(n) x_buf(1:2)];
end


% n = 1, x_buf[x(0) x(-1) x(-2)]
% n = 2, x_buf[x(1) x(0) x(-1)]
% n = 3, x_buf[x(2) x(1) x(0)]




