clear all; close all; 
%%%%% Curvas Caracteristicas %%%%%
vce112 = [0 0.6 2.0 4.0 6.0 8.0 10.0 12.0 14.0 16.0 18.0];   R = 178;  
vr112 = [0 60 60 60 60 60 60 60 60 60 60];           ic112 = vr112/R;
vce191 = [0 1.0 2.0 4.0 6.0 8.0 10.0 12.0 14.0 16.0 18.0];
vr191 = [0 140 140 140 140 140 140 140 140 140 140]; ic191 = vr191/R;
vce416 = [0 1.4 2.0 4.0 6.0 8.0 10.0 12.0 14.0 16.0 18.0];
vr416 = [0 380 380 380 380 380 400 400 400 400 400]; ic416 = vr416/R;
vce610 = [0 1.6 2.0 4.0 6.0 8.0 10.0 12.0 14.0 16.0 18.0];
vr610 = [0 560 580 580 580 600 600 600 600 600 600]; ic610 = vr610/R;
vce846 = [0 1.6 2.0 4.0 6.0 8.0 10.0 12.0];
vr846 = [0 720 760 760 760 780 780 780];             ic846 = vr846/R;

figure(1); clf;
hold on;
plot(vce112,ic112);plot(vce191,ic191);plot(vce416,ic416)
plot(vce610,ic610);plot(vce846,ic846)
xlabel('Voltaje Colector-Emisor, V_{CE}[V]'); ylabel('Corriente de Colector, I_{c}[mA]');
legend('V_{BB} = 1.12 V','V_{BB} = 1.91 V','V_{BB} = 4.16 V','V_{BB} = 6.10 V','V_{BB} = 8.46 V')
hold off;
%%%%% Recta de Carga %%%%%
vrc = [0 740 1350 2140 2800 3520 4310 4930 5550 6410 6960 7730 8610]; ic  = vrc/R;
vce = [8.87 8.06 7.52 6.64 5.99 5.15 4.53 3.80 3.35 2.28 1.68 1.11 0.14];

[N1,a1,incertidumbrea1,b1,incertidumbreb1,r1] = MinimosCuadrados(vce416(2:end),ic416(2:end))
[N2,a2,incertidumbrea2,b2,incertidumbreb2,r2] = MinimosCuadrados(vce,ic)
xx = 8.4:0.1:8.5; yy1 = a1.*xx+b1; yy2= a2.*xx+b2;

figure(2);clf;
hold on;
plot(vce112,ic112);plot(vce191,ic191);plot(vce416,ic416)
plot(vce610,ic610);plot(vce846,ic846);plot(vce,ic,'k');
legend('V_{BB} = 1.12 V','V_{BB} = 1.91 V','V_{BB} = 4.16 V','V_{BB} = 6.10 V','V_{BB} = 8.46 V','Recta de carga')
hold off;
figure(3);clf;
plot(xx,yy1,'m',xx,yy2,'k')
axis([8.4 8.5 2 2.5])
xlabel('Voltaje Colector-Emisor, V_{CE}[V]'); ylabel('Corriente de Colector, I_{c}[mA]');
legend('V_{BB} = 4.16 V','Recta de carga')