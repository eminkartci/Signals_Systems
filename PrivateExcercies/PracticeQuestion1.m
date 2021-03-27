

%% Practice Question 1

  % Generate the following sequence using basic MATLAB signal functions and
  % operations. Plot the sequence from -5 to 20 both inclusive
  
  % x(n) = 10 u(n) - 5 u(n-5) - 10 u(n-10) + 5 u(n-15)
  
%% Solution

% the lenght of the signal is:
    % [-5,20] -> 26 samples
timeRange = -5:20;

% construc the signal by using operators
x_n = 10 * (timeRange >=0) - 5 * (timeRange >=5) -10 * (timeRange >=10) + 5 * (timeRange >=15);

% Stem will print discrete signals
    % Their size must match !
stem(timeRange,x_n);

% set the axis
    % first 2 arguments for x limits
    % last 2 arguments for y limits
axis([-5 20 -20 20])
% Set title
title("x(n) = 10 u(n) - 5 u(n-5) - 10 u(n-10) + 5 u(n-15)")

% Set axis labels
xlabel('Time');
ylabel('Magnitude');


