
%% Intro
clc
clear

%% Method 1 - Dirac Delta

% Define time range
time_series = -4:4;
% This is the signal
x_n         = [0,0,0,0,1,0,0,0,0];

% Stem will print discrete signals
    % Their size must match !
stem(time_series,x_n);

% Set title
title("Dirac Delta Signal")

% Set axis labels
xlabel('Time');
ylabel('x[n]');

%% Method 2 - Dirac Delta Large Time

timeLength = 40;

% Define time range
time_series = -timeLength:timeLength;
% This is the signal
x_n         = [zeros(1,timeLength) 1 zeros(1,timeLength)];

% Stem will print discrete signals
    % Their size must match !
stem(time_series,x_n);

% Set title
title("Dirac Delta Signal")

% Set axis labels
xlabel('Time');
ylabel('x[n]');


%% Method 3 - Array Operations

timeLength = 40;

% Define time range
time_series = -timeLength:timeLength;
% This is the signal
x_n         = time_series == 0; % returns 0 if not true 1 if true
                      % only n == 0 is true whis is dirac delta

% Stem will print discrete signals
    % Their size must match !
stem(time_series,x_n);

% Set title
title("Dirac Delta Signal")

% Set axis labels
xlabel('Time');
ylabel('x[n]');


%% Arranging the axis

timeLength = 40;

% Define time range
time_series = -timeLength:timeLength;
% This is the signal
x_n         = time_series > 5;

% Stem will print discrete signals
    % Their size must match !
stem(time_series,x_n);

% set the axis
    % first 2 arguments for x limits
    % last 2 arguments for y limits
axis([0 20 -3 3])
% Set title
title("Unit step Shifted 5 units +x direction")

% Set axis labels
xlabel('Time');
ylabel('u[n-5]');
