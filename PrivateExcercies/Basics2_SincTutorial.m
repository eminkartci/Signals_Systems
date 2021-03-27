
%% Intro
clc
clear

%% Sinc Function

% Sinc function defined as
    % Sinc(t) = sin(t) / t
    
% Define an interval
timeInterval = -10:0.01:10;

% Define sinc funtion
                       % ./ is used for array operation
sinc = sin(timeInterval) ./ timeInterval;

% plot sinc
plot(timeInterval,sinc,'r--','linewidth',2)

% Set title
title("Sınc Functıon")

% Set axis labels
xlabel('Time');
ylabel('sin(t)/t');

% Put a legend
legend(['Sinc Function']);

% Set the axis
axis([-10 10 -2 2])

% Put grid
grid on

