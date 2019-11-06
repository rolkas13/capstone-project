figure();
speed = diff(enc)* 100
plot(speed(1390:1949))
hold on
plot(sim_omega(1:559))
title('Coast test');
xlabel('Step number');
ylabel('Angular speed [rad/s]');
legend('Experiment','Model')