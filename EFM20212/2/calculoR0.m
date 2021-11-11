clear all; close all;
format long
x = [160.1 151.2 140.6 128.9 118.8 109.6 94.2 79.5 64.9 54.0 44.0 32.9 29.1 27.8 26.1 24.9 22.7 21.4 19.1 17.4 16.0 14.2 12.6 10.5 9.8 8.5 8.1];
y = [46.9 43.6 39.9 35.9 32.6 29.7 25.2 20.9 16.7 13.9 11.0 8.3 7.3 6.9 6.5 6.0 5.8 5.1 4.8 4.4 4.0 3.7 3.1 2.6 2.4 2.2 2.0];
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

xx = 0:10:175;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k' )
legend('Datos experimentales','Ajuste - MMC') 
xlabel('Corriente, I_{f}[mA]');ylabel('Voltaje, V_{f} [mV]');
title('Ajuste por minimos cuadrados')
text (75, 19, strcat ('\fontsize{15}\leftarrow V_{f} = (0.2874\pm0.0027) I_{f} -(0.91\pm0.20)'));
print -djpeg -r100 grafica_ro.jpg