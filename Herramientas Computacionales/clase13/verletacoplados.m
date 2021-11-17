clear all; close all;
N = 6000; m = 2; k1 =2.5; k2 =3.5; k3 =3.5;dt=0.01; t(1) = 0; t(2) = t(1) + dt;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1(1) = 0.1; v1(1)=0.1; x1(2) = x1(1) + v1(1)*dt;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x2(1) = 0.3; v2(1)=0.2; x2(2) = x2(1) + v2(1)*dt;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
v1(2) = v1(1) + (-(k1/m)*x1(1) + (k3/m)*(x2(1)-x1(1)))*dt;
v2(2) = v2(1) + (-(k2/m)*x2(1) - (k3/m)*(x2(1)-x1(1)))*dt;
for i = 3:N
  t(i) = t(i-1) + dt;
  x1(i) = 2*x1(i-1) - x1(i-2) + (-(k1/m)*x1(i-1) - (k3/m)*(x2(i-1)-x1(i-1)))*dt^2;
  x2(i) = 2*x2(i-1) - x2(i-2) + (-(k2/m)*x2(i-1) - (k3/m)*(x2(i-1)-x1(i-1)))*dt^2;
  v1(i) = (x1(i-1) - x1(i-2))/dt; 
  v2(i) = (x2(i-1) - x2(i-2))/dt; 
end
figure(1);clf; plot(t,x1,'b-','linewidth',2);grid on;
figure(2);clf; plot(t,x2,'b-','linewidth',2);grid on;
figure(3);clf; plot(t,x1+x2,'b-','linewidth',2);grid on;
figure(4);clf; plot3(x1,x2,v1,'b-','linewidth',2);grid on;
figure(5);clf; plot3(x1,x2,v2,'b-','linewidth',2);grid on;
%tarea usando verlet usar arrastre para un proyectil en x y y.