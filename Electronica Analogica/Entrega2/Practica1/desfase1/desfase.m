clear all; close all;
x = [18.96 20.86 24.23 28.45 32.94 37.93 43.16 45.79 46.61 46.94 48.77 52.89 55.22 61.56 62.07 63.11 64.19 64.74 66.46 70.19 71.52 72.91 79.82 81.63 85.34 86.32 87.33 91.59 96.28 101.51 105.80 112.10 121.10 131.82 150.23 158.11 161.50 181.21 200.91];
y = [-85.9 -87.2 -85.3 -87.2 -85.5 -87.3 -85.1 -85.2 -80.1 -81.3 -77.1 -74.9 -73.6 -63.9 -60.4 -55.6 -50.8 -49.6 -44.5 -33.6 -30.6 -28.1 0 0 12.3 17.8 23.6 30.7 41.1 48.8 55.6 62.4 66.3 74.8 80.4 83.1 84.2 86.1 88.9];
plot (x,y,'-b',x,y,'kx')
title('Diferencia de fase \phi entre V_{out} y V_{in} en funcion de la frecuencia f ')
legend('Interpolacion','Datos Experimentales','Location','northwest')
xlabel('Frecuencia, f[kHz]'); ylabel('Diferencia de fase, \phi(deg)')
print -djpeg -r100 grafica_desfase.jpg