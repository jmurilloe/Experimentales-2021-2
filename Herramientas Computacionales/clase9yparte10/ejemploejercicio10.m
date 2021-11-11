clear all; close all;
t0 = 0.0; tf = 120; N = 200; v0x = 20; v0y = 50; g = 9.81; b1 = 0.07; m = 1;
fy = @(t,vy) -g -(b1/m)*(vy); %dv/dt = g -(b1/m)*(v);
fx = @(t,vx)    -(b1/m)*(vx); %dv/dt = g -(b1/m)*(v);
% solucion exacta
vE = @(t) v0y*exp(-(b1/m)*t) - (m*g/b1)*(1-exp(-(b1/m)*t));
tE = [t0:0/01:tf]
v1x = vE(tE);
[t2,v2x] = EulerModificado(fx,t0,tf,v0x,100)
[t3,v3y] = EulerModificado(fy,t0,tf,v0y,100)

figure(1);clf;
plot (t2,v2x,'k','linewidth',2); grid on;
figure(2);clf;
plot (t3,v3y,'g','linewidth',2); grid on;

