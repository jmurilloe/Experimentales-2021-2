clear all; close all;
d = [0.6 1.5 2.8 5 8 11.8 17.3 21.5 28.8 30.7];
datos06 = [368	377	427	351	375]; datos15 = [391	368	419	385	365];
datos28 = [387	370	390	404	420];datos5 = [388	386	368	376	382];
datos8 = [392	358	368	388	352];datos118 = [379	333	324	348	371];
datos173 = [316	317	318	324	316];datos215 = [309	264	291	286	305];
datos288 = [278	276	274	268	253];datos307 = [242	293	265	267	256];
c06  = mean(datos06) ; deltac06 =  4.6*std(datos06)/sqrt(5);
c15  = mean(datos15) ; deltac15 =  4.6*std(datos15)/sqrt(5);
c28  = mean(datos28) ; deltac28 =  4.6*std(datos28)/sqrt(5);
c5   = mean(datos5)  ; deltac5 =   4.6*std(datos5)/sqrt(5);
c8   = mean(datos8)  ; deltac8 =   4.6*std(datos8)/sqrt(5);
c118 = mean(datos118); deltac118 = 4.6*std(datos118)/sqrt(5);
c173 = mean(datos173); deltac173 = 4.6*std(datos173)/sqrt(5);
c215 = mean(datos215); deltac215 = 4.6*std(datos215)/sqrt(5);
c288 = mean(datos288); deltac288 = 4.6*std(datos288)/sqrt(5);
c307 = mean(datos307); deltac307 = 4.6*std(datos307)/sqrt(5);
c = [c06 c15 c28 c5 c8 c118 c173 c215 c288 c307];
deltasc = [deltac06 deltac15 deltac28 deltac5 deltac8 deltac118 deltac173 deltac215 deltac288 deltac307]
figure(1);clf;
hold on;
plot(d,c,'-b'); errorbar(d,c,deltasc,'*k');xlabel('Espesor [mm]'); ylabel('<N>'); legend('Interpolacion','Datos Experimentales'); title('Numero de particulas en funcion del espesor para el decaimiento \gamma')
hold off;
print -djpeg -r100 particulasvsespesorb137Al.jpg

[N,a,incertidumbrea,b,incertidumbreb,r] = MinimosCuadrados(d(3:end),log(c(3:end)))

xx = min(d(3:end)):(max(d(3:end))-min(d(3:end)))/100:max(d(3:end)); yy = a.*xx+b;
figure(2);clf;
plot(d(3:end),log(c(3:end)),'k*',xx,yy,'m');xlabel('Espesor [mm]'); ylabel('<N>'); legend('Datos Experimentales','Ajuste Minimos Cuadrados'); title('Ajuste semilogaritmico para el decaimiento \gamma')
print -djpeg -r100 ajusteb137Al.jpg