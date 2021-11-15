clear all; close all
VD = [0.017	0.175	0.23	0.363	0.39	0.402	0.43	0.448	0.471	0.475	0.479	0.488	0.492	0.506	0.509	0.513	0.518	0.524	0.528	0.533	0.537	0.542	0.545	0.548	0.552	0.553	0.558	0.56	0.563	0.568	0.572	0.578	0.583	0.587	0.591	0.598	0.609	0.618	0.623	0.627];
I_D= [0	0	1e-05	2e-05	2e-05	6e-05	0.00016	0.00024	0.00047	0.00049	0.00058	0.00075	0.00082	0.00106	0.00115	0.00123	0.00135	0.00145	0.00161	0.00173	0.00193	0.00212	0.00223	0.00233	0.00251	0.00256	0.00269	0.0029	0.00319	0.00352	0.00367	0.00403	0.00454	0.00477	0.00529	0.00598	0.00735	0.00863	0.00925	0.00983];
i = 1; x(1) = 0; y(1) = 0; 
npend1 = 12; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para el arreglo - 1
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

xx = 0.555:0.001:0.632;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1);clf;
plot (VD,I_D,'b*') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 73°C')
legend('Datos experimentales','Location','northwest') 
print -djpeg -r100 grafica_73c.jpg
figure(2); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Recta de carga para un diodo a 73°C')
text (0.59, 0.005, strcat ('\fontsize{11}\leftarrow I = (0.104\pm0.005)V-(0.056\pm0.003)'));
print -djpeg -r100 grafica_ajustepend73c.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a);
xx2 = corte:0.001:0.632;
yy2 = a.*xx2+b;

figure(3); clf;
plot(VD,I_D,'b*',xx2,yy2,'-r')
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 73°C y recta de carga')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
print -djpeg -r100 grafica_73conajuste.jpg