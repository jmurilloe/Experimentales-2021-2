clear all; close all;
d = [0.6 1.5 2.8 5 8 11.8 17.3 21.5 28.8 30.7];
datos06 = [0 0 0 0 1]; datos15 = [0 0 0 0 0];
datos28 = [0 0 0 0 0];datos5 = [0 0 0 0 0];
datos8 = [0 0 0 0 0];datos118 = [0 0 0 0 0];
datos173 = [0 0 0 0 0];datos215 = [0 0 0 0 0];
datos288 = [0 0 0 0 0];datos307 = [0 0 0 0 0];
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
plot(d,c,'-b'); errorbar(d,c,deltasc,'*k');xlabel('Espesor [mm]'); ylabel('<N>'); legend('Interpolacion','Datos Experimentales'); title('Numero de partidas en funcion del espesor para el decaimiento \alpha')
hold off;
print -djpeg -r100 particulasvsespesorr226Al.jpg

[N,a,incertidumbrea,b,incertidumbreb,r] = MinimosCuadrados(d(3:end),log(c(3:end)))

xx = min(d(3:end)):(max(d(3:end))-min(d(3:end)))/100:max(d(3:end)); yy = a.*xx+b;
figure(2);clf;
plot(d(3:end),log(c(3:end)),'k*',xx,yy,'m');xlabel('Espesor [mm]'); ylabel('ln(<N>)'); legend('Datos Experimentales','Ajuste Minimos Cuadrados'); title('Ajuste semilogaritmico para el decaimiento \alpha')
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