
%% Question

% x(n) = y(n) - 5/6 y(n-1) + 1/6 y(n-2)

% Where
% x(n) = u(n)

% Calculate y(n) for 
% n = 0 1 2 ... 200

%% Solution

x       = ones(201,1);
y       = zeros(201,1);
y_buf   = zeros(2,1);


for n = 1:200
   
    y(n)    = x(n) + 5/6 * y_buf(1) - 1/6 * y_buf(2);
    y_buf   = [y(n) y_buf(1)];
end

stem([1:201],y)