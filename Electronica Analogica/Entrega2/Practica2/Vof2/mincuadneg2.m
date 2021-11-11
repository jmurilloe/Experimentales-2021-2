clear all; close all;
format long
vi = 5.5;
x = [10.86 11.42 11.79 12.59 13.19 13.85 14.77 15.39 17.31 19.79 20.71 21.51 23.33 25.47 28.78 35.74 32.12 35.97 41.97 49.46 58.94 72.89 89.35 100.71 128.80 151.82 187.80 235.71];
y = [4.61 4.43 4.23 3.89 3.54 3.15 2.87 2.58 2.16 1.82 1.67 1.51 1.33 1.23 1.03 0.77 0.86 0.78 0.65 0.53 0.44 0.35 0.26 0.21 0.16 0.13 0.09 0.07];
y = 20*log10(y/vi); 
%figure(1); clf;
%plot (x,y,'b*')
%legend('Datos experimentales') 
%xlabel('Frecuencia, f[kHz]');ylabel('Ganancia de voltaje, A_{v} [dB]');
%title('Ganancia de voltaje en funcion de la frecuencia')
%print -djpeg -r100 grafica_ganancia.jpg
x = log(x);
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

xx = 2.25:0.1:5.5;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2); clf;
plot(x,y,'b*',xx,yy,'-k' )
legend('Datos experimentales') 
xlabel('log(Frecuencia, f[kHz])');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ajuste por minimos cuadrados para las frecuencias mayores a f_{0}')
text (3.5, -15, strcat ('\fontsize{13}\leftarrow A_{v} = (-11.71\pm0.14) ln(f) +(25.61\pm0.52)'));
print -djpeg -r100 grafica_bodeneg2.jpg