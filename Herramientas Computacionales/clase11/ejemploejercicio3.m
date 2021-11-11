clear all; close all; 
t0 = 0.0; tf = 500; N = 2000; w2 = 0.1; b = 0.1; w = 0.8; Fm = 4.0;
dt = (tf-t0)/N; t(1) = t0; v(1) = 0; x(1) = 10;
% d^{2}x/dt^{2} = - w_{0}^{2}*x
f = @(t,x,v) v;     %dx/dt = v
g = @(t,x,v) -w2*x - b*v + Fm*cos(w*t); %dv/dt = - w2*x
for n=1:N
  t(n+1) = t(n)+dt;
  xnew = x(n) + dt*f(t(n),x(n),v(n));
  vnew = v(n) + dt*g(t(n),x(n),v(n));
  x(n+1) = x(n) + (dt/2)*(f(t(n),x(n),v(n))+f(t(n+1),xnew,vnew));
  v(n+1) = v(n) + (dt/2)*(g(t(n),x(n),v(n))+g(t(n+1),xnew,vnew));
end  
figure (1); clf; 
plot(t,x,'b','linewidth',2); grid on;
title('Forzado Amortiguado, x&t','fontsize',14); xlabel('t(seg)');ylabel('x(m)');
figure (2); clf; 
plot(t,v,'b','linewidth',2); grid on;
title('Forzado Amortiguado, v&t','fontsize',14); xlabel('t(seg)');ylabel('v(m/seg)');
figure (3); clf; 
plot(x,v,'b','linewidth',2); grid on;
title('Forzado Amortiguado, x&v','fontsize',14); xlabel('x(m)');ylabel('v(m/seg)');