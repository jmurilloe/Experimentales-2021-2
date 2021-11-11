clear all; close all;
format long
vi = 4.5;
x = [80.7 83.4 84.3 88.3 93.8 96.2 98.8 107.3 112.9 116.4 121.1 127.3 135.3 144.4 153.3 165.1 183.2];
y = [0.224 0.222 0.215 0.202 0.188 0.169 0.146 0.128 0.112 0.1 0.094 0.081 0.071 0.068 0.064 0.057 0.048];
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

xx = 4.3:0.1:5.3;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2); clf;
plot(x,y,'b*',xx,yy,'-k' )
legend('Datos experimentales') 
xlabel('log(Frecuencia, f[kHz])');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ajuste por minimos cuadrados para las frecuencias mayores a f_{0}')
text (4.8, -32.5, strcat ('\fontsize{13}\leftarrow A_{v} = (-17.78\pm0.62) ln(f) +(52.2\pm2.9)'));
print -djpeg -r100 grafica_bodeneg.jpg