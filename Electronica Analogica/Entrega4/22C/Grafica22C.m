clear all; close all
VD = [0.056	0.13	0.22	0.23	0.33	0.39	0.41	0.41	0.45	0.48	0.49	0.5	0.517	0.537	0.55	0.56	0.57	0.58	0.585	0.588	0.591	0.598	0.602	0.603	0.605	0.608	0.609	0.611	0.613	0.615	0.62	0.623	0.626	0.63	0.633	0.636	0.64	0.643	0.646	0.653	0.655	0.659	0.665	0.669	0.672	0.678	0.682	0.688	0.694	0.699	0.706	0.713	0.73	0.741	0.755	0.764	0.777];
I_D= [0	0	0	0	0	0	1e-05	2e-05	3e-05	6e-05	8e-05	0.00011	0.00021	0.00023	0.00028	0.00041	0.00051	0.00062	0.00068	0.00073	0.00077	0.0009	0.00096	0.00097	0.00105	0.00109	0.00113	0.00117	0.00121	0.00127	0.00131	0.00142	0.0015	0.00159	0.00166	0.00173	0.00188	0.00199	0.00212	0.00229	0.00239	0.0025	0.0027	0.00289	0.00303	0.00329	0.00347	0.00379	0.00405	0.00433	0.00479	0.00528	0.00646	0.00715	0.00821	0.00907	0.01029];
i = 1; x(1) = 0; y(1) = 0; 
npend1 = 11; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para el arreglo - 1
x0 = size(VD,2)-npend1; 
for n = x0:size(VD,2) 
  x(i) = VD(n);
  y(i) = I_D(n);
  i+=1;
end

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

xx = 0.66:0.01:0.8;
yy = a.*xx+b;

Rd = 1/a
deltaRd = (Rd^2)*incertidumbrea
Vu = -b/a
deltaVu = Vu*sqrt((incertidumbrea/a)^2+(incertidumbreb/b)^2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1);clf;
plot (VD,I_D,'b*') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 22°C')
legend('Datos experimentales','Location','northwest') 
print -djpeg -r100 grafica_22c.jpg
figure(2); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Recta de carga para un diodo a 22°C')
text (0.675, 0.002, strcat ('\fontsize{11}\leftarrow I = (0.070\pm0.002)I-(0.044\pm0.001)'));
print -djpeg -r100 grafica_ajustepend22c.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a);
xx2 = corte:0.01:0.8;
yy2 = a.*xx2+b;

figure(3); clf;
plot(VD,I_D,'b*',xx2,yy2,'-r')
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 22°C y recta de carga')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
print -djpeg -r100 grafica_22conajuste.jpg