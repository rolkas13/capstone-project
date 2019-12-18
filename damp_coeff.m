mean_vec = zeros(1,5);
p_vec = zeros(1,5);
u_vec =[0.2 0.405 0.604 0.8 0.995];
for i = 0:4
    mean_vec(i+1) = mean(tach(400+i*1000:900+i*1000));
    p_vec(i+1) = countRHS(13.3*u_vec(i+1),mean_vec(i+1));
end

plot(mean_vec, p_vec ,'*')
xlabel('Angular velocity [rad/s]')
ylabel('RHS [Am/s]')
title('Linear fitting of parameters f0 and beta')

