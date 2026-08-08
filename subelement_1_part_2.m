% Define initial constants as per assessment brief:
R_0 = 10
R_s = 5
V_s = 7

% Define empty placeholder variables for calculation of max P_s value, as
% well as the associated n value where it occurs
max_P_s = 0
max_n = 0

% Define empty placeholder arrays for all values of n, all values of P_s
% associated with that value of n, and all values of P_s associated with
% that value of n and doubled parameters. We will use these for plotting.
n_vals = []
P_s_vals = []
P_s_vals_doubled_params = []

% Loop through values of n from 0.01 to 2 with an increment of 0.01
for n = 0.01:0.01:2

    % Calculate P_s associated with current n value
    P_s = R_s * (n * V_s / (n^2 * R_0 + R_s))^2

    % Calculate P_s associated with current n value and doubled parameters
    P_s_doubled = (2*R_s) * (n * (V_s) / (n^2 * (2*R_0) + (2*R_s)))^2
    
    % Add to list of n values containing current iteration n value
    n_vals(end+1) = n
    % Add to list of P_s values containing current iteration P_s value
    P_s_vals(end+1) = P_s
    % Add to list of P_s values with doubled input parameters containing
    % current iteration P_s_doubled value
    P_s_vals_doubled_params(end+1) = P_s_doubled

    % If this is the highest recorded P_s value so far, set our placeholder
    % max_P_s and max_n variables to the current values
    if P_s > max_P_s
        max_P_s = P_s
        max_n = n
    end
end

% Print the maximum P_s value and associated n value to the console
fprintf('maximum P_s of %4.2f found at n = %4.2f\n', max_P_s, max_n)

% Create the first (left) subplot
subplot (2,2,1)
% Define the plot with n_values on the x-axis and P_s_vals on the y-axis,
% using a magenta dashed line of stars and a line width of 1.5
plot (n_vals, P_s_vals, 'm--*', 'LineWidth', 1.5)
% Label the x- and y- axes
xlabel ('n value')
ylabel ('P_s value')
% Title the plot
title ('P_s vs n with original input parameters')

% Create the second (right) subplot
subplot (2,2,2)
% Define the plot with n_values on the x-axis and P_s_vals_doubled_params
% on the y-axis, using a blue dotted line of circles and a line width of 2
plot (n_vals, P_s_vals_doubled_params, 'b:o', 'LineWidth', 2)
% Label the x- and y- axes
xlabel ('n value')
ylabel ('P_s value')
% Title the plot
title ('P_s vs n with doubled input parameters')
