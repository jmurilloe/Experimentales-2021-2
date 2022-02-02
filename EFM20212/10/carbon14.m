clear all; close all;
d = [0.6 1.5 2.8 5 8 11.8 17.3 21.5 28.8 30.7];
datos06 = [351	398	401	347	405]; datos15 = [329	319	338	330	294];
datos28 = [270	280	243	268	302];datos5 = [170	183	185	175	198];
datos8 = [114	101	96	109	114];datos118 = [52	61	61	53	65];
datos173 = [30	36	24	20	32];datos215 = [17	7	15	11	19];
datos288 = [4	5	3	6	5];datos307 = [7 4 5 5 5];
c06  = mean(datos06) ; deltac06 =  sqrt((4.6*std(datos06)/sqrt(5))^2+(0.5)^2);
c15  = mean(datos15) ; deltac15 =  sqrt((4.6*std(datos15)/sqrt(5))^2+(0.5)^2);
c28  = mean(datos28) ; deltac28 =  sqrt((4.6*std(datos28)/sqrt(5))^2+(0.5)^2);
c5   = mean(datos5)  ; deltac5 =   sqrt((4.6*std(datos5)/sqrt(5))^2+(0.5)^2);
c8   = mean(datos8)  ; deltac8 =   sqrt((4.6*std(datos8)/sqrt(5))^2+(0.5)^2);
c118 = mean(datos118); deltac118 = sqrt((4.6*std(datos118)/sqrt(5))^2+(0.5)^2);
c173 = mean(datos173); deltac173 = sqrt((4.6*std(datos173)/sqrt(5))^2+(0.5)^2);
c215 = mean(datos215); deltac215 = sqrt((4.6*std(datos215)/sqrt(5))^2+(0.5)^2);
c288 = mean(datos288); deltac288 = sqrt((4.6*std(datos288)/sqrt(5))^2+(0.5)^2);
c307 = mean(datos307); deltac307 = sqrt((4.6*std(datos307)/sqrt(5))^2+(0.5)^2);
c = [c06 c15 c28 c5 c8 c118 c173 c215 c288 c307];
deltasc = [deltac06 deltac15 deltac28 deltac5 deltac8 deltac118 deltac173 deltac215 deltac288 deltac307];
figure(1);clf;
hold on;
plot(d,c,'-b'); errorbar(d,c,deltasc,'*k');xlabel('Espesor [mm]'); ylabel('<N>'); legend('Interpolacion','Datos Experimentales'); title('Numero de partidas en funcion del espesor para el decaimiento \beta')
hold off;
print -djpeg -r100 particulasvsespesorc14Al.jpg

[N,a,incertidumbrea,b,incertidumbreb,r] = MinimosCuadrados(d,log(c))

xx = min(d):(max(d)-min(d))/100:max(d); yy = a.*xx+b;
figure(2);clf;
plot(d,log(c),'k*',xx,yy,'m');xlabel('Espesor [mm]'); ylabel('ln(<N>)'); legend('Datos Experimentales','Ajuste Minimos Cuadrados'); title('Ajuste semilogaritmico para el decaimiento \beta');
print -djpeg -r100 ajustec14Al.jpg
c06  = mean(datos06) 
deltac06 =  sqrt((4.6*std(datos06)/sqrt(5))^2+(0.5)^2)
c15  = mean(datos15) 
deltac15 =  sqrt((4.6*std(datos15)/sqrt(5))^2+(0.5)^2)
c28  = mean(datos28) 
deltac28 =  sqrt((4.6*std(datos28)/sqrt(5))^2+(0.5)^2)
c5   = mean(datos5)  
deltac5 =   sqrt((4.6*std(datos5)/sqrt(5))^2+(0.5)^2)
c8   = mean(datos8)  
deltac8 =   sqrt((4.6*std(datos8)/sqrt(5))^2+(0.5)^2)
c118 = mean(datos118)
deltac118 = sqrt((4.6*std(datos118)/sqrt(5))^2+(0.5)^2)
c173 = mean(datos173)
deltac173 = sqrt((4.6*std(datos173)/sqrt(5))^2+(0.5)^2)
c215 = mean(datos215)
deltac215 = sqrt((4.6*std(datos215)/sqrt(5))^2+(0.5)^2)
c288 = mean(datos288)
deltac288 = sqrt((4.6*std(datos288)/sqrt(5))^2+(0.5)^2)
c307 = mean(datos307)
deltac307 = sqrt((4.6*std(datos307)/sqrt(5))^2+(0.5)^2)