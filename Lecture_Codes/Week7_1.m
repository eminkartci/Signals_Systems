
%% Question 

% y(n) = 1/2 * y(n-1) + x(n)

% where
% x(n) = d(n) + d(n-1)

% Compute y(n) for n = 0 1 2 ... 100

%% Solution 1

% initialize
y = zeros(100,1);
x = zeros(100,1);
    % set x
x(1) = 1;
x(2) = 1;

% first calculation
y(1) = x(1)

% Rest
for n = 2:100
   
    y(n) = 1/2 * y(n-1) + x(n);
    
end

stem([1:100],y)

%% Solution 2

% initialize
y = zeros(100,1);
x = zeros(100,1);
    % set x
x(1) = 1;
x(2) = 1;

% first calculation
y(1) = x(1)

y_buf = zeros(1,1);

for n = 1:100
   
    y(n)    = 1/2 * y_buf(1) + x(n);
    y_buf(1)= y(n); 
end

stem([1:100],y)




