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
n = 1;
j = 1;
k = 1;
alturamaxparab = z1(1);
for i = 2:t
  if z1(i) > alturamaxparab
    alturamaxparab = z1(i);
  end
end
while z1(n) >= 0 
  n = n + 1;
end
fprintf('El tiempo empleado para el movimiento parabolico es: %f seg \n',tplot(n))
fprintf('La altura maxima para el movimiento parabolico es: %f m \n',alturamaxparab)

z2 = (vt1/g)*(v0z + vt1)*(1-exp(-(g/vt1)*tplot))-vt1*tplot; % arraste con c=0.01
x2 = (vt1*v0x/g)*(1-exp(-(g/vt1)*tplot));

alturamaxa1 = z2(1);
for i = 2:t
  if z2(i) > alturamaxa1
    alturamaxa1 = z2(i);
  end
end
while z2(j) >= 0 
  j = j + 1;
end
fprintf('El tiempo empleado para el movimiento de arraste con c=0.01 es: %f seg \n',tplot(j))
fprintf('La altura maxima para el movimiento de arraste con c=0.01 es: %f m \n',alturamaxa1)

z3 = (vt2/g)*(v0z + vt2)*(1-exp(-(g/vt2)*tplot))-vt2*tplot; % arrastre con c=0.05 
x3 = (vt2*v0x/g)*(1-exp(-(g/vt2)*tplot));

alturamaxa2 = z3(1);
for i = 2:t
  if z3(i) > alturamaxa2
    alturamaxa2 = z3(i);
  end
end
while z3(k) >= 0 
  k = k + 1;
end
fprintf('El tiempo empleado para el movimiento de arraste con c=0.05 es: %f seg \n',tplot(k))
fprintf('La altura maxima para el movimiento de arraste con c=0.05 es: %f m \n',alturamaxa2)

figure(1);clf;
plot (x1,z1,'b*',x2,z2,'r*',x3,z3,'k*')
legend('c_{1}=0','c_{2}=0.01','c_{3}=0.05')
grid on;