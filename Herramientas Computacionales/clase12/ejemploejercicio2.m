clear all; close all;
w = 1; tf = (2*pi/w)*10;
N = 500; dt = tf/N;
t(1) = 0; x(1) = 1; vx(1) = 0;
for n = 1:N
  t(n+1) = n*dt;
  xhalf = x(n) + vx(n)*(dt/2);
  vxhalf = vx(n) -(w^2)*x(n)*(dt/2);
  x(n+1) = x(n) + vxhalf*(dt);
  vx(n+1) = vx(n) -(w^2)*xhalf*(dt);
end
figure(1);clf;
plot(t,x,'b-','linewidth',3,t,cos(w*t),'r-','linewidth',3);grid on;
figure(2);clf;
plot(t,vx,'b-','linewidth',3);grid on;