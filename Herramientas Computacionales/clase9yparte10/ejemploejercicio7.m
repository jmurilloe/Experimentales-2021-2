clear all; close all;
f = @(x,y) y./x + x.^(2).*cos(2*x); %dy/dx = x/y
g = @(x) (1/2)*x.^(2).*sin(2*x) + (1/4)*x.*cos(2*x) + (7/4)*x;
xa = [pi:(40-pi)/1000:40];
ya = g(xa);
[xn1,yn1] = EulerAtrasado(f,pi,40,2*pi,1000)
[xn2,yn2] = EulerAdelante(f,pi,40,2*pi,1000)
[xn3,yn3] = EulerModificado(f,pi,40,2*pi,1000)
figure(1);clf;
plot (xa,ya,'b','linewidth',2,xn1,yn1,'r','linewidth',2,xn2,yn2,'k','linewidth',2,xn3,yn3,'g','linewidth',2); grid on;
legend('Analitico','Euler Atrasado','Euler Adelante','Euler Modificado','Location','northwest')
s1 = sprintf('El error es: %4f \n',sqrt(sum((yn1-ya).^2/size(xn1,2))));
s2 = sprintf('El error es: %4f \n',sqrt(sum((yn2-ya).^2/size(xn2,2))));
s3 = sprintf('El error es: %4f \n',sqrt(sum((yn3-ya).^2/size(xn3,2))));
disp(s1);disp(s2);disp(s3)
text(5,700,s1,'FontName','Arial','FontSize',20)
text(5,500,s2,'FontName','Arial','FontSize',20)
text(5,300,s3,'FontName','Arial','FontSize',20)
print -djpeg -r100 SolAnaliticaEulerAAM.jpeg
