clear all; close all;
x = 4:1:27;
y = [1.981818182 1.272727273 0.886363636 0.645454545 0.495454545 0.386363636 0.318181818 0.259090909 0.218181818 0.186363636 0.159090909 0.140909091 0.131818182 0.113636364 0.1 0.095454545 0.086363636 0.077272727 0.072727273 0.063636364 0.059090909 0.054545455 0.05 0.045454545];

x = log(x);
y = log(y);

size(x)
size(y)
N = size(x)(2)

sxy = sum(x.*y);
sxx = sum(x.*x);
syy = sum(y.*y);
sx = sum(x);
sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2;
sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

c = polyfit(x,y,1)
xx = 1.25:0.01:3.4;
yy = polyval(c,xx);

hold on;

plot(x,y,'*')
plot(xx,yy,'-bk')
legend('Datos Experimentales','Ajuste - MMC') 
xlabel('log(Distancia, d[cm])');ylabel('log(Potencia, P [mW])');
title('Ajuste con escala logaritmica')
%x_err= ones(1,24)*-3
%errorbar(x,y,x_err)
%y_err= [1.1, 0.9, 0.7, 1.0, 0.7, 0.6, 1.0, 0.9, 0.5];
%errorbar(x,y_medidos,y_err)
hold off;
print -djpeg -r100 grafica_ajustelog.jpg