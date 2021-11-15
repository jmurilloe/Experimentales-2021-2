clear all; close all
VD = [0.005	0.017	0.027	0.128	0.183	0.282	0.345	0.356	0.37	0.409	0.458	0.472	0.486	0.493	0.507	0.512	0.517	0.518	0.522	0.525	0.537	0.544	0.547	0.55	0.556	0.56	0.562	0.564	0.565	0.569	0.568	0.572	0.576	0.577	0.578	0.579	0.581	0.584	0.586	0.589	0.591	0.592	0.594	0.596	0.597	0.6	0.602	0.604	0.606	0.611	0.612	0.613	0.617	0.619	0.623	0.626	0.627	0.632	0.636	0.638	0.641	0.646	0.647	0.65	0.655	0.657];
I_D= [0	0	0	0	0	0	5e-05	8e-05	0.00014	0.00028	0.00055	0.00065	0.00077	0.00085	0.00097	0.00104	0.00105	0.00112	0.0012	0.00126	0.00146	0.00158	0.00166	0.00168	0.00176	0.00188	0.00194	0.00204	0.00216	0.00217	0.00223	0.00228	0.00238	0.00248	0.00257	0.00264	0.00273	0.00279	0.00289	0.00298	0.00305	0.00318	0.00329	0.00337	0.00345	0.00356	0.00364	0.00386	0.00406	0.00423	0.00439	0.00454	0.00473	0.00504	0.00537	0.00567	0.00586	0.00627	0.00677	0.00703	0.0073	0.0077	0.00816	0.00861	0.00946	0.00982];
i = 1; x(1) = 0; y(1) = 0; 
npend1 = 18; %%%%%%%%%%%%%%%%%%%%% este es el numero de datos para el arreglo - 1
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

xx = 0.6:0.001:0.665;
yy = a.*xx+b;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1);clf;
plot (VD,I_D,'b*') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 54°C')
legend('Datos experimentales','Location','northwest') 
print -djpeg -r100 grafica_54c.jpg
figure(2); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Recta de carga para un diodo a 54°C')
text (0.63, 0.006, strcat ('\fontsize{11}\leftarrow I = (0.109\pm0.004)V-(0.063\pm0.002)'));
print -djpeg -r100 grafica_ajustepend54c.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
corte = (-b)/(a);
xx2 = corte:0.001:0.665;
yy2 = a.*xx2+b;

figure(3); clf;
plot(VD,I_D,'b*',xx2,yy2,'-r')
xlabel('VD[V]');ylabel('I_{D}[A]');
title('Relacion entre corriente y voltaje para un diodo a 54°C y recta de carga')
legend('Datos experimentales','Ajuste - MMC','Location','northwest') 
print -djpeg -r100 grafica_54conajuste.jpg