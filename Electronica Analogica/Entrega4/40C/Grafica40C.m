clear all; close all
VD = [0.003	0.105	0.124	0.147	0.23	0.268	0.273	0.302	0.321	0.33	0.385	0.41	0.458	0.462	0.47	0.477	0.481	0.487	0.494	0.5	0.512	0.521	0.541	0.542	0.549	0.551	0.556	0.564	0.564	0.571	0.575	0.583	0.592	0.593	0.597	0.6	0.605	0.61	0.616	0.62	0.623	0.628	0.633	0.637	0.641	0.646	0.651	0.656	0.662	0.673	0.682	0.682];
I_D= [0	0	0	0	0	0	0	0	0	0	4e-05	0.00012	0.00035	0.00037	0.00044	0.00048	0.00052	0.00056	0.00063	0.0007	0.00078	0.0009	0.00109	0.00107	0.00116	0.00117	0.00131	0.00135	0.00141	0.0015	0.00157	0.0017	0.00199	0.00207	0.00218	0.0023	0.00254	0.00274	0.003	0.00329	0.0035	0.0038	0.00409	0.00448	0.0049	0.00531	0.00569	0.00623	0.00702	0.00841	0.00937	0.00934]; 
i = 1; x(1) = 0; y(1) = 0; 
npend1 = 10; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para el arreglo - 1
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

xx = 0.62:0.01:0.69;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1);clf;
plot (VD,I_D,'b*') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 40°C')
legend('Datos experimentales','Location','northwest') 
print -djpeg -r100 grafica_40c.jpg
figure(2); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Recta de carga para un diodo a 40°C')
text (0.625, 0.003, strcat ('\fontsize{11}\leftarrow I = (0.106\pm0.003)V-(0.063\pm0.002)'));
print -djpeg -r100 grafica_ajustepend40c.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a);
xx2 = corte:0.01:0.69;
yy2 = a.*xx2+b;

figure(3); clf;
plot(VD,I_D,'b*',xx2,yy2,'-r')
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 22°C y recta de carga')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
print -djpeg -r100 grafica_40conajuste.jpg