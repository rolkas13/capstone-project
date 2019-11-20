figure()
hold on
x = 0:0.01:1
for i=1:5
    plot(x, enc(100+i*500:200+i*500))
end
xlabel('Time [s]')
ylabel('Angular position [rad]')
title('Plant step response')
savefig('doc/images/PID_respose.png')