clear all; close all;
format long
vi = 4.5;
x = [9.1 15.6 24.4 37.1 38.3 44.8 48.1 56.0 60.5 62.5 67.1 71.5 73.6 78.2 80.7 83.4 84.3 88.3 93.8 96.2 98.8 107.3 112.9 116.4 121.1 127.3 135.3 144.4 153.3 165.1 183.2];
y = [0.016 0.027 0.032 0.052 0.059 0.068 0.085 0.105 0.132 0.151 0.172 0.196 0.203 0.224 0.224 0.222 0.215 0.202 0.188 0.169 0.146 0.128 0.112 0.1 0.094 0.081 0.071 0.068 0.064 0.057 0.048];
y = 20*log10(y/vi); 
figure(1); clf;
plot (x,y,'b*')
legend('Datos experimentales') 
xlabel('Frecuencia, f[kHz]');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ganancia de voltaje en funcion de la frecuencia')
print -djpeg -r100 grafica_ganancia.jpg
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
print -djpeg -r100 grafica_bode.jpg