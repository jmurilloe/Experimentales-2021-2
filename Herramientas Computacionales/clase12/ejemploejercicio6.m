clear all; close all;
d = 9.811; e = 10.0; tf = 100; N = 5000; dt = tf/N; 
t(1) = 0; x(1) = 1; vx(1) = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for n = 1:N
  t(n+1) = n*dt;
  xhalf = x(n) + vx(n)*(dt/2); %x es theta
  vxhalf = vx(n) -(d+e*cos(t(n)))*x(n)*(dt/2);
  x(n+1) = x(n) + vxhalf*(dt);
  vx(n+1) = vx(n)-(d+e*cos(t(n)))*xhalf*(dt);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
plot(t,x,'b-','linewidth',0.5);grid on;
figure(2);clf;
plot(t,vx,'b-','linewidth',0.5);grid on;
figure(3);clf;
plot(x,vx ,'k-','linewidth',0.5);grid on;