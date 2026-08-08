% Generate t values from 0 to 2 with an increment of 0.1
t = [0:0.1:2]

% Generate n values from 1 to 5 with an increment of 0.2
n = [1:0.2:5]

% Convert t values to radians for sin/cos functions
t_rad = t*pi/180

% Convert n values to radians for sin/cos functions
n_rad = n*pi/180

% Calculate z function using element-wise operations
z = (t_rad.^2 - n_rad.^2) .* log(abs(cos(t_rad) ./ sin(n_rad)))

% the fprintf statement provided reverses the output range of the z
% function, since z returns negative values. A correct statement should
% reverse the less than signs around z, stating "-0.00 >z> -0.02", or
% reverse z(1) and z(end) to produce "-0.02 <z< -0.00"

% fprintf statement prints output ranges to console
fprintf('for %4.2f <t< %4.2f and %4.2f <n< %4.2f we have %4.2f <z< %4.2f\n', t(1), t(end), n(1), n(end), z(1), z(end))