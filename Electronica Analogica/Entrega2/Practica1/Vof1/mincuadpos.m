clear all; close all;
format long
vi = 4.5;
x = [9.1 15.6 24.4 37.1 38.3 44.8 48.1 56.0 60.5 62.5 67.1 71.5 73.6 78.2];
y = [0.016 0.027 0.032 0.052 0.059 0.068 0.085 0.105 0.132 0.151 0.172 0.196 0.203 0.224];
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

xx = 2:0.1:4.5;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k' )
legend('Datos experimentales','Location','northwest') 
xlabel('log(Frecuencia, f[kHz])');ylabel('Ganancia de voltaje, A_{v} [dB]');
title('Ajuste por minimos cuadrados para las frecuencias inferiores a f_{0}')
text (2.5, -50, strcat ('\fontsize{15}\leftarrow A_{v} = (10.97\pm0.83) ln(f) -(75.8\pm3.1)'));
print -djpeg -r100 grafica_bodepos.jpg