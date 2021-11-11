clear all; close all; 

dx = pi/5;
x = 0:dx:2*pi;
y = sin(x);

xi = 0:dx/20:2*pi;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yi = interp1(x,y,xi,'linear');
figure(1); clf;
plot(x,y,'b*', xi, yi, 'r-')
title('Interpolacion Lineal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yic = interp1(x,y,xi,'pchip');
figure(2); clf;
plot(x,y,'b*', xi, yic, 'r-')
title('Interpolacion Pchip')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yis = interp1(x,y,xi,'spline');
figure(3); clf;
plot(x,y,'b*', xi, yis, 'r-')
title('Interpolacion Spline')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yis = interp1(x,y,xi,'spline');
figure(4); clf;
plot(x,y,'b*', xi, yi, 'r-', xi, yic, 'k-', xi, yis,'g-')
legend('Grafica','Linear', 'Pchip', 'Spline')