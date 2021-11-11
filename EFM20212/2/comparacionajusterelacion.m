clear all; close all;
format long
x = [1	1.43	1.87	2.34	2.85	3.36	3.88	4.41	4.95	5.48	6.03	6.58	7.14	7.71	8.28	8.86	9.44	10.03	10.63	11.24	11.84	12.46	13.08	13.72	14.34	14.99	15.63	16.29	16.95	17.62	18.28	18.97	19.66]; 
y = [300	400	500	600	700	800	900	1000	1100	1200	1300	1400	1500	1600	1700	1800	1900	2000	2100	2200	2300	2400	2500	2600	2700	2800	2900	3000	3100	3200	3300	3400	3500]; 

xx = 0:0.01:20;
yy = (xx.^(0.8299))*exp(5.6869);
exp(5.6869)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC') 
xlabel('R/R_{0}');ylabel('T[K]');
title('Ajuste por minimos cuadrados')
text (1, 200, strcat ('\fontsize{14}\leftarrow T = exp(5.6869\pm0.0030)*(R/R_{0})^{(0.8299\pm0.0014)}'));
print -djpeg -r100 grafica_ajuste_TRro.jpg