%% Intro - Definition

% Filter Power: 

%% Function
function power = filter_power(filter, f) 

k       = 0:999;
x       = sin(2*pi*k*f/1000);

pin     = x * x';

y       = conv(filter, x);
y       = y(1:1000);

pout    = y * y';
power   = pout/pin;

end
