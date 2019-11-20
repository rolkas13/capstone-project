figure()
hold on
t = 0:0.01:1
plot(t, tach_raw(100:200))
plot(t, tach_inertia(100:200))
plot(t, tach_fir(100:200))
plot(t, tach_fir1(100:200))
title ('Comparision of filtering techniques')
xlabel('Time [s]')
ylabel('Angular velocity [rad/s]')
legend('raw', 'inertia object', 'fir', 'fir1')