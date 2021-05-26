

%% Question

% H(z) = 1 / ( (1 - r * exp(1i * theta) * z^(-1) ) * ( (1 - r * exp(-1i * theta) * z^(-1) )

% H(z) = 1 / ( (1 - z^(-1) * r * (exp(1i * theta) + exp(-1i * theta)) + r^2 * z^-2)

% H(z) = 1 / ( 1 - z^-1 * r * 2 * cos(theta) + r^2 * z^-2 )

%% Solution

% Given Parameters
r = 0.99;
theta = pi /2;

% Initialize
ss = 2*pi / 1024;
w  = 0:ss:(2*pi);

% Define z
z = exp(-1i * w);

% Define Transfer Function
H = 1 ./ ( 1 - z * r * 2 * cos(theta) + r^2 * z.^-2);

%% Plot Magnitude and Phase Spectrums

subplot(3,2,1);
plot(w,abs(H),'-.r');
title('Magnitude')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on


subplot(3,2,2);
plot(w,angle(H));
title('Phase')
% Set axis labels
xlabel('Frequency');
ylabel('Angle of H[n]');
grid on


%% Calculate by using Frequenct Function (MATLAB)

[H,w] = freqz(1, [r^2 -2*r*cos(theta) 1],1024,'whole');

subplot(3,2,3);
plot(w,abs(H),'g');
title('Magnitude')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on


subplot(3,2,4);
plot(w,angle(H));
title('Phase')
% Set axis labels
xlabel('Frequency');
ylabel('Angle of H[n]');
grid on

%% Calculate by using formulas

absH = 1 ./ sqrt( (1-2*r*cos(theta-w)+r^2) .* (1-2*r*cos(theta+w)+r^2) );

angH = atan( r*sin(theta-w) ./ (1-r*cos(theta-w)) ) + atan( -r*sin(theta+w) ./ (1-r*cos(theta+w)) );

subplot(3,2,5);
plot(w,absH);
title('Magnitude')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on


subplot(3,2,6);
plot(w,angH);
title('Phase')
% Set axis labels
xlabel('Frequency');
ylabel('Angle of H[n]');
grid on

