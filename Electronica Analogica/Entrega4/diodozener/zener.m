clear all; close all
VD = [-7.06	-7.05	-7.02	-7	-6.98	-6.95	-6.9	-6.91	-6.86	-6.8	-6.78	-6.68	-6.65	-6.59	-6.51	-6.4	-6.21	-5.85	-5.4	-4.5	-3.61	-2.71	-1.8	-0.92	0	0.1	0.2	0.3	0.41	0.5	0.61	0.65	0.69	0.71	0.72	0.73	0.73	0.74	0.75	0.75	0.76	0.762	0.767	0.772	0.776	0.779	0.786	0.789];
I_D = [-32.9	-31.4	-29.7	-27.6	-26.1	-24.2	-20.3	-22.1	-18.5	-16.8	-15.1	-13.2	-11.4	-9.6	-7.8	-5.9	-3.6	-1.3	-0.5	0	0	0	0	0	0	0	0	0	0	0	0.5	1.3	3.6	5.9	7.8	9.6	11.4	13.2	15.1	16.8	18.5	20.3	22.1	25.7	29.1	31.2	32.9	34.7]; 

i = 1; x(1) = 0; y(1) = 0; x2(1) = 0; y2(1) = 0;
npend1 = 11; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para la recta en v pos - 1
x0n = 11; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para la recta en v neg
x0 = length(VD)-npend1; 
x2 = VD(1:x0n); y2 = I_D(1:x0n); x = VD(x0:length(VD)); y = I_D(x0:length(VD));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Minimos Cuadrados voltaje directo%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
size(x)
size(y)
N = size(x)(2)
format long

sxy = sum(x.*y); sxx = sum(x.*x); syy = sum(y.*y); sx = sum(x); sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2; sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Minimos Cuadrados voltaje inverso%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
size(x2)
size(y2)
N2 = size(x2)(2)

sx2y2 = sum(x2.*y2); sx2x2 = sum(x2.*x2); sy2y2 = sum(y2.*y2); sx2 = sum(x2); sy2 = sum(y2);
a2 = (((N2)*(sx2y2))-((sx2)*(sy2)))/(((N2)*(sx2x2))-((sx2)*(sx2)))
b2 = (((sx2x2)*(sy2))-((sx2)*(sx2y2)))/(((N2)*(sx2x2))-((sx2)*(sx2)))
e2 = (y2-((a2*x2)+b2)).^2; sei2 = sum(e2);
iN2certidumbrea2=sqrt((sei2)/(N2-2))*sqrt((N2)/(((N2)*(sx2x2))-((sx2)*(sx2))))
iN2certidumbreb2=sqrt((sei2)/(N2-2))*sqrt((sx2x2)/(((N2)*(sx2x2))-((sx2)*(sx2))))
r2 = (((N2)*(sx2y2))-((sx2)*(sy2)))/(sqrt(((N2)*(sx2x2))-((sx2)*(sx2)))*sqrt(((N2)*(sy2y2))-((sy2)*(sy2))))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xx = min(x):0.0001:max(x); yy = a.*xx+b; x2x2 = min(x2):0.0001:max(x2); y2y2 = a2.*x2x2+b2; %vectores para graficar la recta resultante del ajuste

Rd = 1/a
deltaRd = (Rd^2)*incertidumbrea
Vu = -b/a
deltaVu = Vu*sqrt((incertidumbrea/a)^2+(incertidumbreb/b)^2)

Rd2 = 1/a2
deltaRd2 = (Rd2^2)*iN2certidumbrea2
Vu2 = -b2/a2
deltaVu2 = abs(Vu2)*sqrt((iN2certidumbrea2/a2)^2+(iN2certidumbreb2/b2)^2) %calculo de la resitencia dinamica Rd, voltaje umbral Vu, resitencia zener Rd2 y voltaje zener Vu2.

%%%%%%%%%%%%%%%%%%%%%%Graficas%%%%%%%%%%%%%%%%%%%%%%%%%

figure (1);clf;
plot (VD,I_D,'b*'); xlabel('VD[V]');ylabel('I_{D}[A]'); title('Relacion entre corriente y voltaje para un diodo Zener');
legend('Datos experimentales','Location','northwest'); grid on; 
print -djpeg -r100 grafica_zener.jpg

figure(2); clf;
plot(x,y,'b*',xx,yy,'-k'); legend('Datos experimentales','Ajuste - MMC','Location','northwest'); xlabel('VD[V]');ylabel('I_{D}[A]');
title('Region  de voltaje directo con pendiente estable para un diodo Zener');
text (0.735, 20, strcat ('\fontsize{11} I = (496\pm30) V-(302\pm23)\rightarrow'));
print -djpeg -r100 grafica_ajustependzenpos.jpg

figure(3); clf;
plot(x2,y2,'b*',x2x2,y2y2,'-k'); legend('Datos experimentales','Ajuste - MMC','Location','northwest'); xlabel('VD[V]');ylabel('I_{D}[A]');
title('Region  de voltaje inverso con pendiente estable para un diodo Zener')
text (-6.9, -23, strcat ('\fontsize{11}\leftarrow I = (62.0\pm3.1) V+(406\pm21)'));
print -djpeg -r100 grafica_ajustependzenneg.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a); mx = (max(I_D)-b)/(a); xx2 = corte:0.01:mx; yy2 = a.*xx2+b; 
corte2 = (-b2)/(a2); mx2 = (min(I_D)-b2)/(a2); x2x22 = mx2:0.01:corte2; y2y22 = a2.*x2x22+b2; %vectores para graficar las rectas de los ajustes

figure(4); clf;
plot(VD,I_D,'b.',x2x22,y2y22,'-r',xx2,yy2,'-m'); xlabel('VD[V]'); ylabel('I_{D}[A]'); title('Comparacion ajustes voltaje inverso y voltaje directo para un diodo Zener');
legend('Datos experimentales','Ajuste - MMC voltaje inverso','Ajuste - MMC voltaje directo','Location','northwest'); grid on
print -djpeg -r100 grafica_zenercon2ajustes.jpg 