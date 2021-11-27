clear all; close all;
l = 0.1; m=1.0; b = 0.2; dt = 0.5; Tf = 30; t = 0:dt:Tf; N = length(t);
x (1)=0.0; v(1) = 0.12; x(2) = x(1) + v(1)*dt;
for i = 3:N
  x(i) = 2*x(i-1) - x(i-2) + (-(l/m)*x(i-1) - (b/m)*v(i-2))*dt^2;
  v(i-1)= (x(i)-x(i-2))/(2*dt);
end
v(N) = (x(N)-x(N-2))/(dt);
figure(1); clf;
plot(t,x,'-k','linewidth',2); grid on;
L = 1; ct = 0;
for i = 1:N
    position = x(i);
    x0 = 0; y0 = 0; 
    x1 = L*cos(position - (pi/2)); y1 = -L*sin(position + (pi/2));
    figure(2)
    plot([x0,x1],[y0,y1],'linewidth',5) % longitud del pendulo
    hold on;
    plot(x1,y1,'marker','.','markersize',40) % masa del pendulo 
    plot([-1,1],[0,0],'linewidth',5,'b')% soporte del pendulo 
    hold off; axis([-2 2 -1.5 0.5])
    grid on; pause(0.1); drawnow;
end