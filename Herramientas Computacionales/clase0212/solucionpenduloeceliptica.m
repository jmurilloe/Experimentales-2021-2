clear all; close all;
g = 9.81; l = 10; omega0 = sqrt(g/l);
k = sin(20*pi/180/2);
t = 0:0.01:50;
plot(t,2*asin(k*ellipj(omega0*t,k)),'-b','linewidth',2,t,(2*sin(k))*sin(omega0*t),'-r','linewidth',2)
legend('Jacobi', 'sin', 'Location','best')
% tarea encontrar la velocidad angular