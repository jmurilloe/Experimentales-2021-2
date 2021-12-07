clear all; close all;tic
m = 1.5; M = 0.5; k = 10; L = 0.7; g = 9.81
x0 = [0.3,0,pi/4,0]; t = 0:0.01:30;
f = @(t,x) [x(2);
            (M*L*sin(x(3))*x(4)^2 - k*x(1) + 
            M*g*sin(x(3))*cos(x(3)))/(m + M*sin(x(3))^2);
            x(4);
            -(M*L*sin(x(3))*cos(x(3))*x(4)^2 - k*x(1)*cos(x(3)) + 
            (m+M)*g*sin(x(3)))/(m*L + M*L*sin(x(3))^2)];
[t,x] = ode45(f,t,x0);

figure(1);clf;
subplot(2,2,1);plot(t,x(:,1),'-b','linewidth',2); grid on;
subplot(2,2,2);plot(t,x(:,3),'-b','linewidth',2); grid on;
subplot(2,2,3);plot(t,x(:,2),'-b','linewidth',2); grid on;
subplot(2,2,4);plot(t,x(:,4),'-b','linewidth',2); grid on;toc
%%%%% tarea: pendulo total