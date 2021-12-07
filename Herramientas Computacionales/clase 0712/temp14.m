clear all; close all;
x0 = [1,0,0,6.27];
t = 0:0.01:1;
f = @(t,x) [x(2); -4*pi^2*x(1)/(x(1)^2+x(3)^2)^(3/2);...
            x(4); -4*pi^2*x(3)/(x(1)^2+x(3)^2)^(3/2)];
[t,x] = ode45(f,t,x0);
figure(1); clf;
plot(t,x(:,1),'-b','linewidth',2); grid on;
xlabel('Tiempo'); ylabel('Posicion');
figure(2); clf;
plot(t,x(:,2),'-b','linewidth',2); grid on;
xlabel('Tiempo'); ylabel('Velocidad');
figure(3); clf;
plot(x(:,1),x(:,2),'-b','linewidth',2); grid on;
xlabel('Posicion'); ylabel('Velocidad');