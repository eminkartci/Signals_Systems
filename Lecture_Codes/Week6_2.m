
% X(z) = 2 / ( (1- 1/3 z^-1) (1 - 2 z^-1))

% X(y) = 2 / ( (1- 1/3 y) (1 - 2 y))

[r p k] = residue(2,conv([-1/3 1],[-2 1]))

% r = [1.2 -1.2]
% p = [3    0.5]
% k = []

% X(y) = 1.2 / (y -3) - 1.2 / (y- 0.5)

% X(z^-1) = 1.2 / (z^-1 -3) - 1.2 / (z^-1 - 0.5)

% X(z^-1) = (-1.2/3) / ( (-1/3)z^-1 +1) + 2.4 / ( -2 z^-1 + 1)


