clear all; close all; clf;
h = 0.01; N = 200; y(1) = 1;
for n = 1:N
  x(n+1) = n*h;
  y(n+1) = y(n)+ h*(-6*y(n)); % y' = f(x,y) => dy/dx = -6*y
end
%%%%%%%%%%%%%%%%SOLUCION%NUMERICA%%%%%%%%%%%%%%%%%%%%%%%%
figure (1); clf; plot(x,y,'linewidth',3); grid on;
%%%%%%%%%%%%%%%%SOLUCION%ANALITICA%%%%%%%%%%%%%%%%%%%%%%%%
x1 = 0:0.01:2; y1 = exp(-6*x1);
figure (2); clf; plot(x1,y1,'linewidth',3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (3); clf; plot(x,y,'b*','linewidth',3,x1,y1,'r*','linewidth',3); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sqrt(sum(y-y1).^2/N)
s = sprintf('El error es: %4f \n',sqrt(sum((y-y1).^2/size(x,2))));
disp(s)