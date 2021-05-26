

%% Question

%  Design a Kaisser window

% parameters
d = 0.001;
dw = 0.2*pi;
A = -20 * log10(d);

% A > 50 so
beta = 0.1102 * (A - 8.7);
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







