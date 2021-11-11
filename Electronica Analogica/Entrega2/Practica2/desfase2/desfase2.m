clear all; close all;
format short
x = [2.02	2.51	2.91	3.44	3.87	4.15	4.48	5.01	5.59	6.12	6.79	7.58	8.52	9.04	9.08	9.15	9.63	9.76	10.31	10.97	11.79	13.04	13.76	15.39	17.45	19.79	22.35	24.62	28.05	34.09	40.83	45.23];
y = [-90.1	-89.4	-89.2	-87.9	-84.4	-79.5	-75.7	-71.5	-65.4	-57.9	-48.7	-36.8	-27.8	-19.1	-20.7	-17.9	-6.2	-6.3	0	8.9	19.1	36.2	38.3	47.4	56.7	61.1	68.6	73.4	76.6	81.1	85.7	88.6];
plot (x,y,'-b',x,y,'kx')
title('Diferencia de fase \phi entre V_{out} y V_{in} en funcion de la frecuencia f ')
legend('Interpolacion','Datos Experimentales','Location','northwest')
xlabel('Frecuencia, f[kHz]'); ylabel('Diferencia de fase, \phi(deg)')
print -djpeg -r100 grafica_desfase2.jpg