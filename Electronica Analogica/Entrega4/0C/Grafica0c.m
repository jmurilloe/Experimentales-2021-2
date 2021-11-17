clear all; close all
VD = [0.167	0.423	0.459	0.498	0.556	0.558	0.564	0.571	0.589	0.591	0.605	0.613	0.625	0.63	0.642	0.656	0.657	0.665	0.671	0.678	0.681	0.686	0.691	0.7	0.714	0.721	0.73	0.745	0.753	0.765	0.785	0.792	0.813	0.832	0.857	0.858	0.863];
I_D= [0	0	0	2e-05	8e-05	0.00011	0.00013	0.00018	0.00024	0.00025	0.00033	0.00041	0.00052	0.00057	0.0007	0.00093	0.00099	0.00108	0.00122	0.00132	0.00147	0.00161	0.00171	0.00197	0.0024	0.00265	0.00299	0.00358	0.00392	0.00454	0.00551	0.00581	0.00685	0.00793	0.0092	0.00935	0.00957];
i = 1; x(1) = 0; y(1) = 0; 
npend1 = 11; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para el arreglo - 1
x0 = size(VD,2)-npend1; 
for n = x0:size(VD,2) 
  x(i) = VD(n);
  y(i) = I_D(n);
  i+=1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Minimos Cuadrados%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
size(x)
size(y)
N = size(x)(2)
format long

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xx = 0.7:0.01:0.87; 
yy = a.*xx+b; %vectores para graficar la recta resultante del ajuste

Rd = 1/a
deltaRd = (Rd^2)*incertidumbrea
Vu = -b/a
deltaVu = Vu*sqrt((incertidumbrea/a)^2+(incertidumbreb/b)^2) %calculo de la resistencia dinamica y del voltaje umbral para el diodo, con sus respectivas incertidumbres obtenidas de derivadas parciales

%%%%%%%%%%%%%%%%%%%%%%Graficas%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1);clf;
plot (VD,I_D,'b*') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 0°C')
legend('Datos experimentales','Location','northwest') 
print -djpeg -r100 grafica_0c.jpg
figure(2); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Region con pendiente estable de corriente y voltaje para un diodo a 0°C')
text (0.775, 0.005, strcat ('\fontsize{11}\leftarrow I = (0.0496\pm0.0007) V-(0.0333\pm0.0006)'));
print -djpeg -r100 grafica_ajustepend0c.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a);
xx2 = corte:0.01:0.87;
yy2 = a.*xx2+b; %vectores para graficar la recta del ajuste, para evidenciar el corte con el eje I=0 en la grafica inicial (1) 

figure(3); clf;
plot(VD,I_D,'b*',xx2,yy2,'-r')
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 0°C y recta de carga')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
print -djpeg -r100 grafica_0conajuste.jpg