

%% Question

% Plot the magnitude and phase response of h(n) 

% H(e^jw) = 1 + exp(-1i * w) + 1 / ( 1 - 0.3 * exp(-1i * w))

%% Solution

% stepsize 
stepSize = 2 .* pi / 256;

% Range
w = -pi:stepSize:pi;

% Response
H = 1 + exp(-1i * w) + 1 ./ (1 - 0.3 * exp(-1i* w));

%% Plot

subplot(2,1,1);

plot(w, abs(H));
title('Magnitude')
% Set axis labels
xlabel('Frequency');
ylabel('|H[n]|');
grid on

subplot(2,1,2);

plot(w, angle(H));
title('Phase')
% Set axis labels
xlabel('Frequency');
ylabel('Angle of H[n]');
grid on

%% Question 2

% Compute the y(n)
% When x(n) = sin(pi/8 n) * u(n)

% 2 * x(n) + 0.7 * x(n-1) - 0.3 * x(n-2) = y(n) - 0.3 y(n-1)

% y(n) = 0.3 y(n-1) + 2 * x(n) + 0.7 * x(n-1) - 0.3 * x(n-2)

%% Solution 2

% initialize bufs

y_buf = zeros(1,1);
x_buf = zeros(2,1);

y = zeros(101,1);
x = sin([0:100] * pi/8);

for n = 1:101
   
    y(n) = 2 * x(n) + 0.7 * x_buf(1) - 0.3 * x_buf(2) + 0.3 * y_buf(1) ;
    
    y_buf = y(n);
    x_buf = [x(n) x_buf(1)];
    
end

figure;
stem(0:100,y);
title('Output')
% Set axis labels
xlabel('Time');
ylabel('y[n]');
grid on




