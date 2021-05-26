

%% Design Kaisser Window

d = 0.01;
dw = 0.4 * pi;

A = -20 * log10(d);

% A = 20 , 21 < A < 50
beta = 0.5842 * (A - 21)^0.4 + 0.07866 * (A -21);
M = ceil( (A - 8) / (2.285 * dw) );

alpha = M/2;

% initialize the window 
w = zeros(1,M+1);

for n = 0:M
    w(n+1) = besseli(0, beta * sqrt(1 - ( (n-alpha) / alpha )^2 )) / besseli(0,beta);
end

% plot
plot(w)
title('Kaisser Window')
% Set axis labels
xlabel('n');
ylabel('w[n]');
grid on


%% Design Filter


wc = 0.1 * pi;


% Step 1 - The ideal low-pass filter
N = 6;
n = -N:N;

h = sin(wc * n) ./ (pi * n);
h(N+1) = 0.2;

% Step 2 - use kaiser window
h_lp = h .* w;

figure;
subplot(2,1,1);

plot(n,h);
title('Hanning Window')
% Set axis labels
xlabel('n');
ylabel('w[n]');
grid on

subplot(2,1,2);

plot(n,h_lp);
title('Low Pass Filter')
% Set axis labels
xlabel('n');
ylabel('h_lp[n]');
grid on


%% Frequency Domain Plots
f = 0:2*pi/64:2*pi;


figure;
subplot(2,1,1);
plot(f, abs(fft(h,length(f))))

subplot(2,1,2);
plot(f, abs(fft(h_lp,length(f))))

%% Compute Y


n = 0:10000;
x = sin(0.05*pi*n) + sin(0.6*pi*n);

subplot(2,1,1);
plot(abs(fft(x,length(n))));
title('x[n]')
% Set axis labels
xlabel('n');
ylabel('Magnitude');
grid on

y = conv(x,h);

subplot(2,1,2);
plot(abs(fft(y)));
title('y[n]')
% Set axis labels
xlabel('n');
ylabel('Magnitude');
grid on






