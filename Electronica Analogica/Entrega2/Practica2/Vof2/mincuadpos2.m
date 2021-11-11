clear all; close all;
format long
vi = 5.5;
x = [0.15 0.26 0.31 0.41 0.47 0.49 0.73 0.91 1.22 1.38 1.56 1.94 2.61 3.36 3.89 4.04 4.65 5.32 5.99 6.80 7.39 7.86 8.15 8.79 9.81 9.31 10.17 10.55];
y = [0.06 0.08 0.09 0.11 0.13 0.16 0.18 0.22 0.29 0.33 0.37 0.47 0.65 0.93 1.18 1.19 1.44 1.71 2.08 2.54 2.91 3.22 3.62 4.03 4.57 4.36 4.68 4.69];
y = 20*log10(y/vi); 
%plot (x,y,'b*')
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

xx = -2:0.1:2.5;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k' )
legend('Datos experimentales','Location','northwest') 
xlabel('log(Frecuencia, f[kHz])');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ajuste por minimos cuadrados para las frecuencias inferiores a f_{0}')
text (-1.5, -15, strcat ('\fontsize{13} A_{v} = (9.60\pm0.26) ln(f) -(25.38\pm0.40)\rightarrow'));
print -djpeg -r100 grafica_bodepos2.jpg