clear all; close all;
x = [9.1 15.6 24.4 37.1 38.3 44.8 48.1 56.0 60.5 62.5 67.1 71.5 73.6 78.2 80.7 83.4 84.3 88.3 93.8 96.2 98.8 107.3 112.9 116.4 121.1 127.3 135.3 144.4 153.3 165.1 183.2];
y = [0.016 0.027 0.032 0.052 0.059 0.068 0.085 0.105 0.132 0.151 0.172 0.196 0.203 0.224 0.224 0.222 0.215 0.202 0.188 0.169 0.146 0.128 0.112 0.1 0.094 0.081 0.071 0.068 0.064 0.057 0.048];
figure(1); clf;
plot (x,y,'k*')
xlabel('F[kHz]'); ylabel('V_{O}[V]');
title ('Variacion del Voltaje de salida en funcion de la Frecuencia')
legend('Datos experimentales')
print -djpeg -r100 grafica_volsvsf.jpg
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yn = y./0.224;
x70= 0:1:200;
y70= 0.7*ones(1,201);
xf1= 63.77*ones(1,8);
yf1= 0:0.1:0.7;
xf2= 97.58*ones(1,8);
yf2= 0:0.1:0.7;
figure(2); clf;
plot (x,yn,'r-*',x70,y70,'b-',xf1,yf1,'y-',xf2,yf2,'y-')
xlabel('F[kHz]'); ylabel('V_{O}/V_{0max}');
title ('Variacion del Voltaje de salida en funcion de la Frecuencia')
legend('Datos experimentales')
ylim([0 1.125]);
print -djpeg -r100 grafica_volsvsfnorm.jpg
