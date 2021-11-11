clear all; close all;
dphi = pi/100;
N = 30;
phi = 0:dphi:N*(2*pi);
theta = phi/N/2;
r = 1;

x = r*sin(theta).*cos(phi);
y = r*sin(theta).*sin(phi);
z = r*cos(theta);
size(x)
size(y)
size(z)
plot3(x, y, z, '-b','linewidth', 2)
grid on;
axis equal;
title ('Esfera','fontsize', 20)
xlabel ('x', 'fontsize', 20)
ylabel ('y', 'fontsize', 20)
zlabel ('z', 'fontsize', 20)
print -djepg -r100 esfera.jpeg
print -dpng r100 esfera.png
print -dpdf-r100 esfera.pdf