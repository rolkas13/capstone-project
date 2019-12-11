%%
t = (0:length(setpoint)-1)/100;
%%
close all
fig = figure('Position', [100 100 800 800])
subplot(211);
hold on
plot(t,velocity_ref)
plot(t,velocity_real)
legend('Reference velocity', 'Measured velocity')
xlabel('Time [s]')
ylabel('Velocity [rad/s]')
%title('Setpoint following without trajectory generator')
%title('Setpoint following with disturbance')
title('Robustness of system - eddy current brake wheel removed')
%title('Setpoint following')
xlim([0 max(t)])
subplot(212);
plot(t, velocity_ref - velocity_real)
xlabel('Time [s]')
ylabel('Velocity error [rad/s]')
xlim([0 max(t)])
%%
%saveas(fig, 'doc/images/exp2_vel.svg')
saveas(fig, 'doc/images/exp4_vel.svg')

%%
close all
fig = figure('Position', [100 100 800 800])
subplot(211);
hold on
plot(t,position_ref)
plot(t,angle_real)
legend('Reference position', 'Measured position')
xlabel('Time [s]')
ylabel('position [rad]')
%title('Setpoint following without trajectory generator')
%title('Setpoint following with disturbance')
title('Robustness of system - eddy current brake wheel removed')
%title('Setpoint following')
xlim([0 max(t)])
subplot(212);
plot(t, position_ref - angle_real)
xlabel('Time [s]')
ylabel('position error [rad]')
xlim([0 max(t)])

%%
%saveas(fig, 'doc/images/exp2_pos.svg')
saveas(fig, 'doc/images/exp4_pos.svg')
