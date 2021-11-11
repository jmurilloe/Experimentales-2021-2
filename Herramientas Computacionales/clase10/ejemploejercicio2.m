clear all; close all;
f = @(x,y) y./x + x.^(2).*cos(2*x); %dy/dx = x/y
g = @(x) (1/2)*x.^(2).*sin(2*x) + (1/4)*x.*cos(2*x) + (7/4)*x;
xa = [pi:0.1:40];
ya = g(xa);
[xn,yn] = EulerAtrasado(f,pi,40,2*pi,1000)
[xn,yn] = EulerAtrasado(f,pi,40,2*pi,1000)
[xn,yn] = EulerAtrasado(f,pi,40,2*pi,1000)
figure(1);clf;
plot (xa,ya,'b','linewidth',3,xn,yn,'r','linewidth',3); grid on;
legend('Analitico','Euler','Location','northwest')
s = sprintf('El error es: %4f \n',sqrt(sum((ya-yn).^2/size(xn,2))));
disp(s)
text(0.1,1.15,s,'FontName','Arial','FontSize',20)
print -djpeg -r100 SolAnaliticaEulerAtras.jpeg
print -dpng -r100 SolAnaliticaEulerAtras.jpng
print -dpdf -r100 SolAnaliticaEulerAtras.jpdf