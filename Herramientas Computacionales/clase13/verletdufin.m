clear all; close all;
N = 30000; m = 1.0; dt=0.01; k =1.0; b =0.2; F =10; eps = 0.25;  wf =2;
x(1) = 3; v(1)=0.1;
x(2) = x(1) + (v(1)*dt); t(1) = 0; t(2) = t(1) + dt;
v(2) = v(1) + (-(k/m)*x(1) - (b/m)*v(1) -(eps/m)*x(1)^3  + (F/m)*cos(wf*t(1)))*dt;
E(1) = (0.5*m*v(1)^2)+(0.5*k*x(1)^2); E(2) = (0.5*m*v(2)^2)+(0.5*k*x(2)^2); 
for i = 3:N
  t(i) = t(i-1) + dt;
  x(i) = 2*x(i-1) - x(i-2) + (-(k/m)*x(i-1) -(eps/m)*x(i-1)^3 - (b/m)*v(i-1) + (F/m)*cos(wf*t(i-1)))*dt^2;
  v(i) = (x(i-1) - x(i-2))/dt; 
end
figure(1);clf; plot(t,x,'b+','linewidth',1);grid on;
figure(2);clf; plot(t,v,'b+','linewidth',1);grid on;
figure(3);clf; plot(x,v,'b-','linewidth',0.5);grid on;