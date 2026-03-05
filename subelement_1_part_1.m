t = [0:0.1:2]
n = [1:0.2:5]

t_rad = t*pi/180
n_rad = n*pi/180

z = (t_rad.^2 - n_rad.^2) .* log(abs(cos(t_rad) ./ sin(n_rad)))

fprintf('for %4.2f < t < %4.2f and %4.2f < n < %4.2f we have %4.2f < z < %4.2f\n', t(1), t(end), n(1), n(end), z(1), z(end))