%%
t = (0:length(setpoint_tg_validation)-1)/100;
%%
close all
fig = figure('Position', [100 100 800 800]);
subplot(311);
plot(t,setpoint_tg_validation)
xlabel('Time [s]')
ylabel('Position [rad]')
%title('Setpoint following without trajectory generator')
%title('Setpoint following with disturbance')
title('Trajectory generator')
xlim([0 max(t)])
subplot(312);
plot(t,omega_tg_validation)
xlabel('Time [s]')
ylabel('Velocity [rad/s]')
xlim([0 max(t)])
subplot(313);
plot(t,acc_tg_validation)
xlabel('Time [s]')
ylabel('Acceleration [rad/s^2]')
xlim([0 max(t)])
%%
%saveas(fig, 'doc/images/exp2_vel.svg')
saveas(fig, 'doc/images/trajectory_generator.svg')