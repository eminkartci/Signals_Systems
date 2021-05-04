
% X(z) = 1 / ( (1-1/4 z^-1) (1-1/2 z^-1) )

% X(y) = 1 / ( (1-1/4 y) (1-1/2 y) )

% Matrix multiplication is done using convolution

% X1(z) * X2(z) = conv(X1,X2)

[r p k] = residue(1, conv([-1/4 1],[-1/2 1]))

% r = [4 -4]
% p = [4  2]
% k = []

% X(y) = r(1) / ( y - p(1)) + r(2) / ( y - p(2))

% X(y) = 4 / (y - 4) - 4 / (y + 2)

% X(z^-1) = 4 / (z^-1 - 4) - 4 / (z^-1 + 2)
% X(z^-1) = -1 / (1 - 1/4 z^-1 ) - 2 / ( -1/2 z^-1 + 1)


%% Convolution

% X1(z)  = z^2 + 3z + 1
% X2(z)  = z^3 - 2
% X3(z)  = X1(z) * X2(z) = [ 1     3     1    -2    -6    -2]

% X3(z)  = z^5 + 3 z^4 + z^3 -2 z^2 -6 z -2

X3 = conv([1 3 1],[1 0 0 -2]);


%% OFFICIAL CODE


% PFE with Matlab


% If X(y) = 1 / (y^2 +3y +2) = 1 / (y+1)(y+2) = A / (y+1) + B / (y+2)
% [r,p,k] = residue(1, [1 3 2]);
%
% r(1) / (y - p(1)) + r(2) / (y - p(2))
% X(y) = -1 / (y + 2) + 1 / (y + 1)



% X(y) = 1 / (1-1/4 y) (1 - 1/2 y)

% convolution function is used for polynomial multiplication
[r,p,k] = residue(1, conv([-1/4 1], [-1/2 1]) )

% 4 / (y-4) -4/(y-2)

% 4 / (z^-1 - 4) - 4 / (z^-1 - 2)

% 1 / (1 - az^-1), then I know the inverse z transform

% -1 / (1 - 1/4 z^-1) + 2 / (1 - 1/2 z^-1)

