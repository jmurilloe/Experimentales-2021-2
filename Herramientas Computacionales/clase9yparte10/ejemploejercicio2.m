clear all; close all; clf;
ti = 0; tf = 2; N = 100; dt = (tf-ti)/N; y0 = 1;
t(1) = ti;
y(1) = y0;
f = @(t,y) 3 + t -y; % funcion anonima
for n = 1:N
  t(n+1) = t(n) + dt;
  y(n+1) = y(n) + dt*f(t(n),y(n)); % y' = f(x,y) => dy/dx = -6*y
end
%%%%%%%%%%%%%%%%SOLUCION%NUMERICA%%%%%%%%%%%%%%%%%%%%%%%%
figure (1); clf; plot(t,y,'b-','linewidth',3); grid on;
%%%%%%%%%%%%%%%%SOLUCION%ANALITICA%%%%%%%%%%%%%%%%%%%%%%%%
ta = 0:0.02:tf; ya = 2 + ta - exp(-ta);
figure (2); clf; plot(ta,ya,'linewidth',3); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (3); clf; 
plot(t,y,'b*','linewidth',3,ta,ya,'r*','linewidth',3); grid on;
legend('Euler','Analitico', 'location', 'northwest')
s = sprintf('El error es: %4f \n',sqrt(sum((y-ya).^2/size(t,2))));
disp(s)