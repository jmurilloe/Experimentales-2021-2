clear all; close all;
N = 6000; m = 4.2; k =2.5; dt=0.01; 
x(1)=1; v(1)=0.1;
x(2) = x(1) + v(1)*dt
v(2) = v(1) - (-(k/m)*x(1))*dt;
t(1) = 0; t(2) = t(1)+dt;
E(1) = (0.5*m*v(1)^2)+(0.5*k*x(1)^2);E(2) = (0.5*m*v(2)^2)+(0.5*k*x(2)^2); 
for i = 3:N
  t(i) = t(i-1) + dt;
  % x(i+1) = 2*x(i) - x(i-1) + dt^2*x";
  x(i) = 2*x(i-1) - x(i-2) + (-(k/m)*x(i-1))*dt^2;
  v(i) = (x(i-1) - x(i-2))/dt; 
  E(i) = (0.5*m*v(i)^2)+(0.5*k*x(i)^2);
  end
figure(1);clf; plot(t,x,'b-','linewidth',2);grid on;
figure(2);clf; plot(t,v,'b-','linewidth',2);grid on;
figure(3);clf; plot(t,E,'b-','linewidth',2);grid on;
axis([0 max(t) 0 1.5])