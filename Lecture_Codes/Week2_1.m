% y(n-1) + 2*y(n) = x(n) + 3*x(n-2) + x(n-3)


% initialize y and x to zero
y = zeros(31,1);
x = zeros(31,1);


% In matlab if you have x(n), n should be greater than 0.
% because of that we add a +1 to our indices.
x(1) = 1; % x(0)
x(2) = 1; % x(1) 


% create the memory buffers
x_buf = zeros(1,3); % x_buf = [x(n-1) x(n-2) x(n-3)]
y_buf = zeros(1,1); % y_buf = [y(n-1)]

% for n = 1:31
%     y(n) = 0.5*(x(n) + 3*x(n-2) + x(n-3) - y(n-1));
% end

for n = 1:31
    y(n) = 0.5*(x(n) + 3*x_buf(2) + x_buf(3) - y_buf);
    
    y_buf = y(n);
    
    x_buf = [x(n) x_buf(1:2)];
end


stem(y)
% Set title
title("Y[n]")

% Set axis labels
xlabel('Time');
ylabel('y[n]');


% n = 1, x_buf[x(0) x(-1) x(-2)]
% n = 2, x_buf[x(1) x(0) x(-1)]
% n = 3, x_buf[x(2) x(1) x(0)]