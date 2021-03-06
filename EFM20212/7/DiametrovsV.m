clear all; close all; 
D1int = [21.8	22.7	22.7	23.6	24	24.5	24.65	26.35	26.8	27.2	28	27.55	30]; h = 
D1ext = [25.4	25.6	26	26.7	26.35	28.05	28	29.15	30	28.4	31.85	32.8	34.2];
%D1 = (D1ext+D1int)/2;
D1 = [24 24 24 25 25 26 26 28 28 28 30 30 32];
%D1 = [0.024 0.024 0.024 0.025 0.025 0.026 0.026 0.028 0.028 0.028 0.030 0.030 0.032];
deltad1 = (D1-D1int)+0.4;
D2int = [39.45	39.4	39.3	40.85	42.5	43.25	43	46.75	45.25	47.8	50.4	50.7	53.4];
D2ext = [45.25	43.45	47.5	46.2	45.95	46.9	48.4	48.75	50.65	51.55	53.2	55.2	58.2];
%D2 = (D2ext+D2int)/2;
D2 = [42 41 43 44 44 45 46 48 48 50 52 53 56];
%D2 = [0.042 0.041 0.043 0.044 0.044 0.045 0.046 0.048 0.048 0.050 0.052 0.053 0.056];
deltad2 = (D2-D2int)+0.4;
V = [5	4.8	4.6	4.4	4.2	4	3.8	3.6	3.4	3.2	3	2.8	2.6];
x = log(V); y = log(D1);
j = log(V); k = log(D2); 

%%%%%% ajustes para D1
[N1,a1,deltaa1,b1,deltab1,r1] = MinimosCuadrados(V,D1); % escala normal
[N2,a2,deltaa2,b2,deltab2,r2] = MinimosCuadrados(x,y)   % escala logaritmica
[N3,a3,deltaa3,b3,deltab3,r3] = MinimosCuadrados(x,D1); % escala con escala logaritmica en V
[N4,a4,deltaa4,b4,deltab4,r4] = MinimosCuadrados(V,y);  % escala con escala logaritmica en D

%%%%%% ajustes para D1
[N5,a5,deltaa5,b5,deltab5,r5] = MinimosCuadrados(V,D2); % escala normal
[N6,a6,deltaa6,b6,deltab6,r6] = MinimosCuadrados(j,k)   % escala logaritmica
[N7,a7,deltaa7,b7,deltab7,r7] = MinimosCuadrados(j,D2); % escala con escala logaritmica en V
[N8,a8,deltaa8,b8,deltab8,r8] = MinimosCuadrados(V,k);  % escala con escala logaritmica en D

%%%%% lineas para ajustes (Aqui ya se selecciono cual ajuste es mejor, comparando el coeficiente de Pearson)
xx1=min(x):(max(x)-min(x))/10:max(x); yy1 = a2*xx1+b2;
xx2=min(j):(max(j)-min(j))/10:max(j); yy2 = a6*xx2+b6;

%%%%% Figuras
figure(1); clf;
plot(V,D1,'k*'); xlabel('Voltaje, V [V]'); ylabel('Diametro del anillo 1, D_{1}[mm]'); legend('Datos Experimentales')
title('Comportamiento del diametro del anillo 1 en funcion del voltaje aplicado')
print -djpeg -r100 D1vsV.jpg

figure(2); clf;
plot(V,D2,'k*'); xlabel('Voltaje, V [V]'); ylabel('Diametro del anillo 2, D_{2}[mm]'); legend('Datos Experimentales')
title('Comportamiento del diametro del anillo 2 en funcion del voltaje aplicado')
print -djpeg -r100 D2vsV.jpg

figure(3); clf;
plot(x,y,'k*',xx1,yy1,'r-'); xlabel('ln(V [V])'); ylabel('ln(D_{1}[mm])'); legend('Datos Experimentales','Ajuste lineal por minimos cuadrados')
title('Ajuste del diametro del anillo 1 vs voltaje aplicado en escala logaritmica')
print -djpeg -r100 ajusteD1vsV.jpg

figure(4); clf;
plot(j,k,'k*',xx2,yy2,'r-'); xlabel('ln(V [V])'); ylabel('ln(D_{2}[mm])'); legend('Datos Experimentales','Ajuste lineal por minimos cuadrados')
title('Ajuste del diametro del anillo 2 vs voltaje aplicado en escala logaritmica')
print -djpeg -r100 ajusteD2vsV.jpg