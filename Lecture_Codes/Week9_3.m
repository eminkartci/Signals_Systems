

%% Question

% Design a low pass filter with parameters

N  = 25;     % Sample Size
n  = [-N:N];   % Time range
wc = pi/4;   % Cutoff Frequency

ss = 2*pi/512;            % step size
w  = -pi:ss:pi;            % frequency

h = sin(wc*n) ./ (pi*n); % lowpass filter impulse response
h(N+1) = 1;                % Get rid of infinity at the middle n=0



% initialize result
H_fft = zeros(size(w));

%% Solution

for k = 1:length(w)
   
    % sample DTFT to get DFT
    % so that we can plot it
    H_fft(k) = sum ( h .* exp(-1i*w(k)*n) );
    
end

%% Plot

plot(w,abs(H_fft),'.-b');
title('Magnitude of LPF')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on



