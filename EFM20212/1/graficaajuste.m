clear all; close all;
x = 4:1:27;
y = [1.981818182 1.272727273 0.886363636 0.645454545 0.495454545 0.386363636 0.318181818 0.259090909 0.218181818 0.186363636 0.159090909 0.140909091 0.131818182 0.113636364 0.1 0.095454545 0.086363636 0.077272727 0.072727273 0.063636364 0.059090909 0.054545455 0.05 0.045454545];

xx = 3:0.01:29;
yy = (exp(3.3544))./(xx.^1.949);

hold on;

plot(x,y,'*')
plot(xx,yy,'-bk')
legend('Datos experimentales','Ajuste - MMC') 
xlabel('log(Distancia, d[cm])');ylabel('log(Potencia, P [mW])');
title('Ajuste por minimos cuadrados')
text (5, 1.75, strcat ('\fontsize{16}\leftarrow P  = e^{3.354\pm0.027}/d^{1.949\pm0.010}'));
%x_err= 0.05;
%y_err= 0.0032;
%errorbar(x, y, x_err, ">", x, y, y_err, "~");
hold off;
print -djpeg -r100 grafica_ajuste.jpg