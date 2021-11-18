clear all; close all;
N = 5000; g = 9.81; m1 = 4; m2 = 2; k = 3; l = 2;
x1 = zeros(1,N); v1 = zeros(1,N); 
x2 = zeros(1,N); v2 = zeros(1,N); 
dt = 10/N; t = zeros(1,N);
for j = 1:N
  t(j) = j;
end

x1(1) = -0.3; v1(1) = -0.8; x1(2) = x1(1) + v1(1)*dt;
x2(1) = 0.6; v2(1) = 0.1; x2(2) = x2(1) + v2(1)*dt;
for i =3:N
  x1(i) = 2*x1(i-1) - x1(i-2) - (g/l)*x1(i-1)*dt^2 + k/m1*(x2(i-1)-x1(i-1))*dt^2;
  v1(i-1) = (x1(i) - x1(i-2))/(2*dt); 
  x2(i) = 2*x2(i-1) - x2(i-2) - (g/l)*x2(i-1)*dt^2 - k/m1*(x2(i-1)-x1(i-1))*dt^2;
  v2(i-1) = (x2(i) - x2(i-2))/(2*dt);
end
v1(N) = (x1(N)-x1(N-1))/(dt); v2(N) = (x2(N)-x2(N-1))/(dt);
figure(1);clf;
subplot(4,1,1);plot(t,x1,'b',t,x2,'r')
subplot(4,1,2);plot(t,v1,'b',t,v2,'r')
subplot(4,1,3);plot(x1,v1,'b')
subplot(4,1,4);plot(x2,v2,'b')
%tarea movimiento de satelite pero en 3 dimensiones