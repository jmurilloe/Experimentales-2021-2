clear all; close all;
x0 = [-8,8,27]; t = 0:0.01:100;
sigma = 10; beta = 8/3; rho = 28;
f = @(t,x) [- sigma*x(1) + sigma*x(2);
            + rho*x(1) - x(2) - x(1)*x(3);
            - beta*x(3) + x(1)*x(2)];
[t,x] = ode45(f,t,x0);
figure(1); clf;
plot(t,x(:,1),'-b','linewidth',2); grid on;

figure(2); clf;
plot(t,x(:,2),'-b','linewidth',2); grid on;

figure(3); clf;
plot(t,x(:,3),'-b','linewidth',2); grid on;

figure(4); clf;
plot3(x(:,1),x(:,2),x(:,3),'-b','linewidth',2); grid on;