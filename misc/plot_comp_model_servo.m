figure
plot(diff(enc)*100)
hold on
plot(sim_omega,'Linewidth',2)
title('Comparison of servo and its model')
xlabel('Time [s]')
ylabel('Angular velocity [rad/s]')
legend(['servo','model'])