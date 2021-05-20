
%% Question 

% H(z) = 1 / ( 1 - r * exp(1i * theta) * z^-1 )
%
% r         = 1 / 2
% theta     = pi /4

%% Solution


% initialize variables

step_size = 2 * pi / 512;
w = -pi:step_size:pi;


r       = 1/2;
theta   = pi /4;

% Response
H = 1 ./ (1 - r * exp(1i *theta) .* exp(-1i .* w));

%% Plotting

subplot(2,1,1);

plot(w,abs(H));
title('Magnitude')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on

subplot(2,1,2);

plot(w,angle(H));
title('Phase')
% Set axis labels
xlabel('Frequency');
ylabel('Angle of H[n]');
grid on

%% Extra Notes

% H(z) = 1 / (1 - a z^-1) ==> h(n) = a^n u(n) if the system is casual

% In our case, a = 0.5 * exp(j * theta) ==> h(n) 0.5^n * exp(j * theta * n) * u(n)



