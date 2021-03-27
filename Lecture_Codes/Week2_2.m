% y(n) - y(n-2) = x(n) + 2*x(n-1) + 3*x(n-2)
%
% compute y(n) for n = 0, 1, ... , 100


% initialize
x = zeros(101, 1);
y = zeros(101, 1);

% define the input
% x(n) = d(n) + d(n-1) + 4d(n-3) - d(n-4)
x(1) = 1;
x(2) = 1;
x(3) = 0;
x(4) = 4;
x(5) = -1;


x_buf = zeros(1,2); % [x(n-1) x(n-2)]
y_buf = zeros(1,2); % [y(n-1) y(n-2)]

% for n = 1:101
%     y(n) = x(n) + 2*x(n-1) + 3*x(n-2) + y(n-2)
% end

for n = 1:101
    y(n) = x(n) + 2*x_buf(1) + 3*x_buf(2) + y_buf(2);
    
    y_buf = [y(n) y_buf(1)];
    x_buf = [x(n) x_buf(1)];
end

stem(y)
% Set title
title("Y[n]")

% Set axis labels
xlabel('Time');
ylabel('y[n]');