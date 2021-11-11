clear all; close all;
x = 200:200:11000; 
y = [14.489 7.244 4.83 3.622 2.898 2.415 2.07 1.811 1.61 1.449 1.317 1.207 1.115 1.035 0.966 0.906 0.852 0.805 0.763 0.724 0.69 0.659 0.63 0.604 0.58 0.557 0.537 0.517 0.5 0.483 0.467 0.453 0.439 0.426 0.414 0.402 0.392 0.381 0.372 0.362 0.353 0.345 0.337 0.329 0.322 0.315 0.308 0.302 0.296 0.29 0.284 0.279 0.273 0.268 0.263]; 
format long
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
xx = 5.125:0.1:9.5;
yy = polyval(c,xx);

hold on;

plot(x,y,'*')
plot(xx,yy,'-bk')
legend('Datos Simulador','Ajuste - MMC') 
xlabel('log(Temperatura(K))');ylabel('log(\lambda_{max}(\mum))');
title('Ajuste con escala logaritmica')
%x_err= ones(1,24)*-3
%errorbar(x,y,x_err)
%y_err= [1.1, 0.9, 0.7, 1.0, 0.7, 0.6, 1.0, 0.9, 0.5];
%errorbar(x,y_medidos,y_err)
hold off;
print -djpeg -r100 grafica_ajustelog_lambdamax.jpg