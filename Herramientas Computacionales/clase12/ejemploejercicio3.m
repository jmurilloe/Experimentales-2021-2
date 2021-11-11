clear all; close all;
g = 9.811; l = 1,0; m = 1; b = 0.2; w = sqrt(g/l); tf = (2*pi/w)*14;
N = 500; dt = tf/N; t(1) = 0; x(1) = 1; vx(1) = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for n = 1:N
  t(n+1) = n*dt;
  xhalf = x(n) + vx(n)*(dt/2);
  vxhalf = vx(n) -(w^2)*x(n)*(dt/2) - (b/m)*vx(n)*(dt/2);
  x(n+1) = x(n) + vxhalf*(dt);
  vx(n+1) = vx(n) -(w^2)*xhalf*(dt) - (b/m)*vxhalf*dt;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
plot(t,x,'b-','linewidth',3);grid on;
figure(2);clf;
plot(t,vx,'b-','linewidth',3);grid on;
figure(3);clf;
plot(t,0.5*m*vx.^(2) + 0.5*g*l*x.^(2) ,'k-','linewidth',3);grid on;