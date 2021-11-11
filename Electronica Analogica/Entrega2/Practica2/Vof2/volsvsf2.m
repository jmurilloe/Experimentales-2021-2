clear all; close all;
x = [0.15 0.26 0.31 0.41 0.47 0.49 0.73 0.91 1.22 1.38 1.56 1.94 2.61 3.36 3.89 4.04 4.65 5.32 5.99 6.80 7.39 7.86 8.15 8.79 9.81 9.31 10.17 10.55 10.86 11.42 11.79 12.59 13.19 13.85 14.77 15.39 17.31 19.79 20.71 21.51 23.33 25.47 28.78 35.74 32.12 35.97 41.97 49.46 58.94 72.89 89.35 100.71 128.80 151.82 187.80 235.71];
y = [0.06 0.08 0.09 0.11 0.13 0.16 0.18 0.22 0.29 0.33 0.37 0.47 0.65 0.93 1.18 1.19 1.44 1.71 2.08 2.54 2.91 3.22 3.62 4.03 4.57 4.36 4.68 4.69 4.61 4.43 4.23 3.89 3.54 3.15 2.87 2.58 2.16 1.82 1.67 1.51 1.33 1.23 1.03 0.77 0.86 0.78 0.65 0.53 0.44 0.35 0.26 0.21 0.16 0.13 0.09 0.07];
figure(1); clf;
plot (x,y,'k*')
xlabel('F[kHz]'); ylabel('V_{O}[V]');
title ('Variacion del Voltaje de salida en funcion de la Frecuencia')
legend('Datos experimentales')
print -djpeg -r100 grafica_volsvsf2.jpg
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x70= 0:1:250;
y70= 0.7*ones(1,251);
xf1= 7.9*ones(1,8);
yf1= 0:0.1:0.7;
xf2= 13.63*ones(1,8);
yf2= 0:0.1:0.7;
yn = y./4.69;
figure(2); clf;
plot (x,yn,'r-*',x70,y70,'b-',xf1,yf1,'y-',xf2,yf2,'y-')
xlabel('F[kHz]'); ylabel('V_{O}/V_{0max}');
title ('Variacion del Voltaje de salida en funcion de la Frecuencia')
legend('Datos experimentales')
ylim([0 1.125]);
print -djpeg -r100 grafica_volsvsfnorm2.jpg
