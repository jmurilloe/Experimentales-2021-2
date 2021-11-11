clear all; close all;
f = @(x,y) x./y; %dy/dx = x/y
g = @(x) sqrt((x.^2)+1);
xa = [0:(0.7/50):0.7];
ya = g(xa);
[xn,yn] = EulerAtrasado(f,0,0.7,1,50)
figure(1);clf;
plot (xa,ya,'b','linewidth',3,xn,yn,'r','linewidth',3); grid on;
legend('Analitico','Euler','Location','northwest')
s = sprintf('El error es: %4f \n',sqrt(sum((ya-yn).^2/size(xn,2))));
disp(s)
text(0.1,1.15,s,'FontName','Arial','FontSize',20)