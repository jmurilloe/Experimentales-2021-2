clear all; close all;
f = @(x,y) ((x.^2)-1)./(y.^2); %dy/dx = x^2-1/y^2
g = @(x) cbrt((x.^3)-3*x+27);
xa = [0:0.01:10];
ya = g(xa);
[xn,yn] = EulerModificado(f,0,10,3,1000);
figure(1);clf;
plot (xa,ya,'b','linewidth',3,xn,yn,'r','linewidth',3); grid on;
legend('Analitico','Euler Modificado','Location','northwest')
s = sprintf('El error es: %f \n',sqrt(sum((ya-yn).^2/size(xn,2))));
disp(s)
text(0.1,6,s,'FontName','Arial','FontSize',20)