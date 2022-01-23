clear all; close all;
xmin = 0; xmax = 1; N = 100; dt = 0.0085; t = 0; tmax = 0.75;
v = 1.2; dx = (xmax-xmin)/N; x = xmin - dx:dx:xmax + dx;
u0 = exp(-200*(x-0.25).^2); u = u0; unp1 = u0;
npasos = ceil(tmax/dt);
for n=1:npasos
  u(1)= u(2);
  u(N+2) = u(N+1);
  for i = 2:N+1
    unp1(i) = u(i) - (v*dt/dx)*(u(i)-u(i-1));
  end
  t = t + dt;
  u = unp1;
  exacta = exp(-200*(x-0.25 - v*t).^2);
  plot(x,exacta,'r-','linewidth',2); grid on; hold on;
  plot(x,u,'b-','linewidth',2); grid on; hold off;
  axis([xmin xmax -0.4 1.7]); pause(dt);
end

