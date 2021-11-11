clear all; close all;
t0 = 0.0; tf = 120; N = 200; v0 = 0; g = 9.81; b1 = 0.07; m = 1;
dt = (tf-t0)/N; t(1) = t0; v(1) = v0;
f = @(t,v) g -(b1/m)*(v); %dv/dt = g -(b1/m)*(v);
for n=1:N
  t(n+1) = t(n) + dt;
  vnew = v(n) + dt*f(t(n),v(n));
  v(n+1) = v(n) + (dt/2)*(f(t(n),v(n))+f(t(n+1),vnew));
end
figure(1);clf;
plot (t,v,'b','linewidth',2); grid on;
vE = (m*g/b1)*(1-exp(-(b1/m)*t));
figure(2);clf;
plot (t,vE,'r','linewidth',2); grid on;
%%%%%%%%%%%% Comparacion Euler Modificado & Sol Analitica %%%%%%%%%%%
figure(3);clf;
plot (t,v,'b','linewidth',2,t,vE,'r','linewidth',2); grid on;