clear all; close all;
v0 = 250; g = 9.81; c1 = 0.01; m = 2;
vt = m*g/c1;
theta = 65;
x0 = 0;
v0x = v0*cos(theta*pi/180);
v0y = 30;
v0z = v0*sin(theta*pi/180);
t = 2*v0z/g;
tplot = linspace(0,t,100);
z1 = v0z*tplot - 0.5*g*tplot.^2;
x1 = v0x*tplot;
y1 = v0y*tplot;
z2 = (vt/g)*(v0z + vt)*(1-exp(-(g/vt)*tplot))-vt*tplot;
x2 = (vt*v0x/g)*(1-exp(-(g/vt)*tplot));
y2 = (vt*v0y/g)*(1-exp(-(g/vt)*tplot));
figure(1);clf;
plot3(x1,y1,z1,'b*',x2,y2,z2,'r*')
legend('Ideal','Con arraste')
xlabel('x(m)');
ylabel('y(m)');
zlabel('z(m)');
grid on;
axis([0 max(x1) 0 max(y1) 0 max(z1)])