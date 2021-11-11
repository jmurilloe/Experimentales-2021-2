clear all; close all;
x = [3.61 3.42 3.12 2.86 2.66 2.41 2.15 1.85 1.75 1.52 1.41 1.21 1 0.73 0.53];
y = [3.2 3.1 2.8 2.6 2.4 2.2 1.9 1.7 1.6 1.4 1.3 1.1 0.9 0.7 0.5];
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xx = 0:0.1:5.5;
yy =  a*xx+b;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1); clf;
plot(x,y,'*r',xx,yy,'-b')
title('V_{L} vs I_{L} ')
xlabel('V_{L} [V]')
ylabel('I_{L} [mA]')
legend('Datos Experimentales','Ajuste')
text (2.25, 2, strcat ('\fontsize{12}\leftarrow I_{L} = (0.8874\pm0.0066)V_{L}+(0.038\pm0.015)'));
print -djpeg -r100 graficapositiva.jpg