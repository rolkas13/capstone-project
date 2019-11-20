f_0 = 0.018;
R = 2.71;
K = 0.053;
J = 0.001118;
Beta = 0.00036;
max_voltage = 13.3;
gear_ratio = 25;

fir_coeff = zeros(1,10)+1/10;
fir_coeff1 = fir1(10, 0.15);

repeat_time = [0 ]
for i = 0:7
    repeat_time = [repeat_time 1+2*i 1+2*i+0.01]
end
repeat_time = [repeat_time]

repeat_item = [0 1 1 0 0 -1 -1 0]
repeat_item1 = [0 -1 -1 0 0 1 1 0]
repeat_val = [0 repeat_item repeat_item1]