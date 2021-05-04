% y(n) - y(n-3) = x(n) + 2*x(n-1) + 3*x(n-5)
% x(n) = sin(3*n + pi/4);


% initialize
x = zeros(101, 1);
y = zeros(101, 1);


x_buf = zeros(1,5); % [x(n-1) x(n-2) x(n-3) x(n-4) x(n-5)]
y_buf = zeros(1,3); % [y(n-1) y(n-2) y(n-3)]


% for n = 1:101
%     y(n) = y(n-3) + x(n) + 2*x(n-1) + 3*x(n-5)
% end


for n = 1:101
    
    x(n) = sin(3*n + pi/4);
    y(n) = y_buf(3) + x(n) + 2*x_buf(1) + 3*x_buf(5);
    
    y_buf = [y(n) y_buf(1:2)];
    x_buf = [x(n) x_buf(1:4)];
    
end


stem(y)
% Set title
title("Y[n]")

% Set axis labels
xlabel('Time');
ylabel('y[n]');

%% OFFICIAL CODE


% y(n) - y(n-3) = x(n) + 2*x(n-1) + 3*x(n-5)
% x(n) = sin(3*n + pi/4);


% initialize
x = zeros(101, 1);
y = zeros(101, 1);


x_buf = zeros(1,5); % [x(n-1) x(n-2) x(n-3) x(n-4) x(n-5)]
y_buf = zeros(1,3); % [y(n-1) y(n-2) y(n-3)]


% for n = 1:101
%     y(n) = y(n-3) + x(n) + 2*x(n-1) + 3*x(n-5)
% end


for n = 1:101
    
    x(n) = sin(3*n + pi/4);
    y(n) = y_buf(3) + x(n) + 2*x_buf(1) + 3*x_buf(5);
    
    y_buf = [y(n) y_buf(1:2)];
    x_buf = [x(n) x_buf(1:4)];
    
end