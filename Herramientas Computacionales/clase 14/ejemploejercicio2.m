clear all; close all;
dt = 0.01; ti = 0; tf = 3.0; g = 9.81; m =0.2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x(1) = 1.0; vx = 0.02;                     x(2) = x(1) + vx(1)*dt;
y(1) = 0.0; vy = 5.01;                     y(2) = y(1) + vy(1)*dt;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%r_c(1) = sqrt(x(1)^2+y(1)^2); r_c(2) = sqrt(x(2)^2+y(2)^2)
t = ti:dt:tf; N = length(t);
for i = 3:N
  x(i) = 2*x(i-1) - x(i-2) - (4*pi^2*x(i-1)/(x(i-1)^2+y(i-1)^2)^(3/2))*dt^2; 
  vx1(i-1) = (x(i) - x(i-2))/(2*dt);
  y(i) = 2*y(i-1) - y(i-2) - (4*pi^2*y(i-1)/(x(i-1)^2+y(i-1)^2)^(3/2))*dt^2; 
  vy(i-1) = (y(i) - y(i-2))/(2*dt);
  %plot(x,y,'b','linewidth',2);grid on; 
end
vx(N) = (x(N) - x(N-1))/(2*dt); vy(N) = (y(N) - y(N-1))/(2*dt)
figure(1);clf;
plot(t,x,'b','linewidth',2,t,y,'r','linewidth',2);grid on; 
legend('Componente en x','Componente en y');
figure(2);clf;
plot(t,vx,'b','linewidth',2,t,vy,'r','linewidth',2);grid on; 
legend('Componente en x','Componente en y');
figure(3);clf;
plot(x,vx,'b','linewidth',2,y,vy,'r','linewidth',2);grid on; 
legend('Componente en x','Componente en y');