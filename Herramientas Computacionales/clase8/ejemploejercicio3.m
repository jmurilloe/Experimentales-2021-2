clear all; close all;
v0 = 250; g = 9.81; c1 = 0.01;c2 = 0.05; m = 2;
vt1 = m*g/c1;
vt2 = m*g/c2;
theta = 65;
x0 = 0;
v0x = v0*cos(theta*pi/180);
v0z = v0*sin(theta*pi/180);
t = 2*v0z/g;
tplot = linspace(0,t,100);
z1 = v0z*tplot - 0.5*g*tplot.^2; % parabolico
x1 = v0x*tplot;
z2 = (vt1/g)*(v0z + vt1)*(1-exp(-(g/vt1)*tplot))-vt1*tplot; % arraste con c=0.001
x2 = (vt1*v0x/g)*(1-exp(-(g/vt1)*tplot));
z3 = (vt2/g)*(v0z + vt2)*(1-exp(-(g/vt2)*tplot))-vt2*tplot; % arrastre con c=0.05 
x3 = (vt2*v0x/g)*(1-exp(-(g/vt2)*tplot));
figure(1);clf;
plot (x1,z1,'b*',x2,z2,'r*',x3,z3,'k*')
legend('c_{1}=0','c_{2}=0.01','c_{3}=0.05')
grid on;
axis([0 max(x1) 0 max(z1)])