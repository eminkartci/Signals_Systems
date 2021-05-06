

% set time interval
n = 0:1000;

% input
x = cos(2*pi*0.02.*n) + cos(2*pi*0.03.*n);

% output
y = 2 * cos(2*pi*0.02.*n) + 3 * cos(2*pi*0.03.*n);

%% Plot

subplot(3,1,1);
plot(x,'r--')
title('Input')

subplot(3,1,2);
plot(y,'b.-')
title('Output')

subplot(3,1,3);
plot(2.5 * x)
hold on
plot(y)
title('Overlapping')