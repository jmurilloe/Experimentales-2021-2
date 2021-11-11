clear all; close all;
x= -pi:0.05:pi; % Me genera un vector x
y= sin(x); % Me genera un vector y del mismo tamanho de x
z= cos(x); % Me genera un vector z del mismo tamanho de x
plot(x,y) % plot grafica los vectores x,y QUE DEBEN SER DEL MISMO TAMANHO
hold on;
plot(x,z)
hold off;
xlabel('\theta(rad)') % theta esta escrito en latex
ylabel('f(\theta(rad))')
legend('sin(\theta)','cos(\theta)')
axis([-1.1*pi 1.1*pi -1.2 1.2])
title('funciones trigonometricas')
grid on;
print -djpeg -r100 trig_func.jpeg
print -dpdf -r100 trig_func.jpdf
print -dpng -r100 trig_func.jpng