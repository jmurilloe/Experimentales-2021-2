clear all; close all;
x = [1	1.43	1.87	2.34	2.85	3.36	3.88	4.41	4.95	5.48	6.03	6.58	7.14	7.71	8.28	8.86	9.44	10.03	10.63	11.24	11.84	12.46	13.08	13.72	14.34	14.99	15.63	16.29	16.95	17.62	18.28	18.97	19.66]; 
y = [300	400	500	600	700	800	900	1000	1100	1200	1300	1400	1500	1600	1700	1800	1900	2000	2100	2200	2300	2400	2500	2600	2700	2800	2900	3000	3100	3200	3300	3400	3500]; 
figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
subplot(2,2,1)
plot(x,y,'-b');grid on;
xlabel('{R}/R_{o}');ylabel('Temperatura(K)');
title('A')
%%%%% esto tiene que ir en la descripcion de la figura '\lambda_{max} vs temperatura para la radiacion de un cuerpo negro'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
semilogy(x,y,'-b');grid on;
xlabel('{R}/R_{o}');ylabel('log(Temperatura(K))');
title('B')
%%%%%\ esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para $\lambda_{max}$'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
semilogx(x,y,'-b');grid on;
xlabel('log({R}/R_{o})');ylabel('Temperatura(K)');
title('C')
%%%%% esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para Temperatura'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
loglog(x,y,'-b');grid on;
xlabel('log({R}/R_{o})');ylabel('log(Temperatura(K))');
title('D')
%%%%% esto tiene que ir en la descripcion de la figura title('Con escala logaritmica en ambos ejes'
print -djpeg -r100 graficas_TRro.jpg