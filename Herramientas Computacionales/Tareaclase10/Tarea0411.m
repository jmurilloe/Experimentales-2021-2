clear all; close all;
t0 = 0.0; tf = 5; N = 500; v0x = 5; v0y = 25; g = 9.81; b1 = 0.2; m = 2;
dt = (tf-t0)/N; t(1) = t0; x(1) = 0; y(1) = 0;
fy = @(t) -(m*g/b1) + (m*g/b1 + v0y)*exp(-(b1/m)*t);
fx = @(t,v) (v0x)*exp(-(b1/m)*t); 
[t,y] = EulerModificado(fy,t0,tf,x(1),N)
[t,x] = EulerModificado(fx,t0,tf,y(1),N)
figure(1);clf;
plot (t,y,'b','linewidth',2); grid on;
figure(2);clf;
plot (t,x,'b','linewidth',2); grid on;
figure(3);clf;
plot (x,y,'b','linewidth',2); grid on;
% Si bien el codigo es mas corto, mas elegante, el codigo calcula 2 veces el vector t. Lo que en calculo mas pesado puede llegar a ser un problema