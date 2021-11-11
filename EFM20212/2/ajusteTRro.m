clear all; close all;
format long
x = [1	1.43	1.87	2.34	2.85	3.36	3.88	4.41	4.95	5.48	6.03	6.58	7.14	7.71	8.28	8.86	9.44	10.03	10.63	11.24	11.84	12.46	13.08	13.72	14.34	14.99	15.63	16.29	16.95	17.62	18.28	18.97	19.66]; 
y = [300	400	500	600	700	800	900	1000	1100	1200	1300	1400	1500	1600	1700	1800	1900	2000	2100	2200	2300	2400	2500	2600	2700	2800	2900	3000	3100	3200	3300	3400	3500]; 
x = log(x);
y = log(y);

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

xx = 0:0.1:3;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC') 
xlabel('log(R/R_{0})');ylabel('log(T[K])');
title('Ajuste por minimos cuadrados')
text (0.5, 6, strcat ('\fontsize{14}\leftarrow log(T) = (0.8299\pm0.0014) log(R/R_{0})+(5.6869\pm0.0030)'));
print -djpeg -r100 grafica_ajustelog_TRro.jpg