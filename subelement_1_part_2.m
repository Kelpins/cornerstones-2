R_0 = 10
R_s = 5
V_s = 7

max_P_s = 0
max_n = 0

for n = 0.01:0.01:2
    P_s = R_s * (n * V_s / (n^2 * R_0 + R_s))^2
    if P_s > max_P_s
        max_P_s = P_s
        max_n = n
    end
end

fprintf('maximum P_s of %4.2f found at n = %4.2f\n', max_P_s, max_n)