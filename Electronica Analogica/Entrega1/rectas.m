clear all; close all;
x = [0.036 0.24 0.47 0.51 0.68 0.75 1.01 1.52 1.79 2.73 3.67 3.93 4.17 4.64 4.73 5.15 5.21];
y = [2.58 2.51 2.41 2.42 2.32 2.29 2.18 1.93 1.81 1.37 0.95 0.84 0.73 0.51 0.47 0.28 0.26];
size(x)
size(y)
N = size(x)(2);

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

xx = 0:0.1:5.5;
yy =  a*xx+b;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1); clf;
plot(x,y,'*r',xx,yy,'-b')
text (2.5, 1.59, strcat ('\fontsize{12}\leftarrow I_{R_{L}} = (-0.4552\pm0.0015)V_{R_{L}}+(2.6252\pm0.0047)'));
title('V_{R_{L}} vs I_{R_{L}} ')
xlabel('V_{R_{L}} [V]')
ylabel('I_{R_{L}} [mA]')
legend('Datos Experimentales','Ajuste')
print -djpeg -r100 graficanegativa.jpg
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p = x.*y
rl = [57 99 198 220 290 330 470 808 984 1960 3870 4630 5580 8970 9810 17530 19950]

maxpotencia = max(p)
corrres = 1960

figure(2); clf;
plot(rl,p,'-o')
title('P_{L} vs R_{L} ')
xlabel('R_{L} [\Omega]')
ylabel('P_{L} [mW]')
legend('Datos Experimentales')
print -djpeg -r100 graficapotencia.jpg


