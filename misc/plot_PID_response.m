figure
plot(step)
hold on
plot(thetaPID)
title('PID response')
xlabel('Time [s]')
ylabel('Angular position [rad/s]')
legend(['step','output'])