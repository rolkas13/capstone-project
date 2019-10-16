p1 = countRHS(24.4043,0.2);
p2 = countRHS(60.1392,0.405);
p3 = countRHS(93.7573,0.604);
p4 = countRHS(130.9863,0.8);
p5 = countRHS(170.083,0.995);
RHS = [p1 p2 p3 p4 p5];
omega = [24.4043 60.1392 93.7573 130.9863 170.083]
plot(omega, RHS ,'*')
xlabel('omega')
ylabel('RHS')
title('Linear fitting of parameters f0 and beta')

