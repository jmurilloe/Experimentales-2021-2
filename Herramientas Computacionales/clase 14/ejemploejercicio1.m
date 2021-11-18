clear all; close all;
dt = 0.05; ti = 0; tf = 4.8; g = 9.81; m =1.0; b1 = 0.0001; b2 = 0.18;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1(1) = 0.0; vx1 = 0.12; x1(2) = x1(1) + vx1(1)*dt;
y1(1) = 0.0; vy1 = 25.12; y1(2) = y1(1) + vy1(1)*dt;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x2(1) = 0.0; vx2 = 0.12; x2(2) = x2(1) + vx2(1)*dt;
y2(1) = 0.0; vy2 = 25.12; y2(2) = y2(1) + vy2(1)*dt;
t = ti:dt:tf; N = length(t);
for i = 3:N
  x1(i) = 2*x1(i-1) - x1(i-2) + (-(b1/m)*vx1(i-2))*dt^2; vx1(i-1) = (x1(i) - x1(i-2))/(2*dt);
  y1(i) = 2*y1(i-1) - y1(i-2) + (-g -(b1/m)*vy1(i-2))*dt^2; vy1(i-1) = (y1(i) - y1(i-2))/(2*dt);
  x2(i) = 2*x2(i-1) - x2(i-2) + (-(b2/m)*vx2(i-2))*dt^2; vx2(i-1) = (x2(i) - x2(i-2))/(2*dt);
  y2(i) = 2*y2(i-1) - y2(i-2) + (-g -(b2/m)*vy2(i-2))*dt^2; vy2(i-1) = (y2(i) - y2(i-2))/(2*dt);
  plot(x1,y1,'b','linewidth',2,x2,y2,'r','linewidth',2);grid on; 
  legend('b_{1}=0.0001','b_{2}=0.18');drawnow;
end
vx1(N) = (x1(N) - x1(N-1))/(2*dt); vx2(N) = (x2(N) - x2(N-1))/(2*dt);
vy1(N) = (y1(N) - y1(N-1))/(2*dt); vy2(N) = (y2(N) - y2(N-1))/(2*dt);