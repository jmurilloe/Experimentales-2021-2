clear all; close all;
format long
vi = 5.5;
x = [0.15 0.26 0.31 0.41 0.47 0.49 0.73 0.91 1.22 1.38 1.56 1.94 2.61 3.36 3.89 4.04 4.65 5.32 5.99 6.80 7.39 7.86 8.15 8.79 9.81 9.31 10.17 10.55 10.86 11.42 11.79 12.59 13.19 13.85 14.77 15.39 17.31 19.79 20.71 21.51 23.33 25.47 28.78 35.74 32.12 35.97 41.97 49.46 58.94 72.89 89.35 100.71 128.80 151.82 187.80 235.71];
y = [0.06 0.08 0.09 0.11 0.13 0.16 0.18 0.22 0.29 0.33 0.37 0.47 0.65 0.93 1.18 1.19 1.44 1.71 2.08 2.54 2.91 3.22 3.62 4.03 4.57 4.36 4.68 4.69 4.61 4.43 4.23 3.89 3.54 3.15 2.87 2.58 2.16 1.82 1.67 1.51 1.33 1.23 1.03 0.77 0.86 0.78 0.65 0.53 0.44 0.35 0.26 0.21 0.16 0.13 0.09 0.07];
y = 20*log10(y/vi); 
figure(1); clf;
plot (x,y,'b*')
legend('Datos experimentales') 
xlabel('Frecuencia, f[kHz]');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ganancia de voltaje en funcion de la frecuencia')
print -djpeg -r100 grafica_ganancia2.jpg
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2); clf;
plot(x,y,'b*')
legend('Datos experimentales','Location','northwest') 
xlabel('log(Frecuencia, f[kHz])');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Diagrama de Bode')
%text (75, 19, strcat ('\fontsize{15}\leftarrow V_{f} = (0.2874\pm0.0027) I_{f} -(0.91\pm0.20)'));
print -djpeg -r100 grafica_bode2.jpg