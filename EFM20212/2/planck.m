clear all; close all;
###################### PARA LAMBA3 = 450 nm ######################
Vfila = [11.6	11.4	11.2	11	10.8	10.6	10.4	10.2	10	9.8	9.6	9.4	9.2	9	8.8	8.6	8.4	8.2	8	7.8	7.6	7.4	7.2	7	6.8	6.6	6.4	6.2	6	5.8	5.6	5.4	5.2	5	4.8	4.6	4.4	4.2	4];
Ifila = [2.81	2.79	2.76	2.74	2.7	2.67	2.65	2.62	2.59	2.56	2.54	2.51	2.48	2.44	2.42	2.39	2.35	2.33	2.3	2.26	2.23	2.2	2.17	2.14	2.1	2.07	2.03	1.99	1.96	1.93	1.89	1.85	1.82	1.78	1.73	1.68	1.66	1.61	1.57]; 
Ilumi = [77.2	72.4	67.9	64	57.6	53.6	50.9	45.9	42.8	39.2	36.7	32.9	30.5	26.6	25	22.6	19.9	18.1	16.2	14.3	12.9	11	10	8.7	7.6	6.4	5.6	4.6	3.4	3.3	2.8	2.1	1.8	1.4	1.1	0.8	0.6	0.4	0.2];
deltav = 0.05;
deltai = 0.005;
Rfila = Vfila./Ifila;
deltar = (sqrt((deltav)^2+(deltai*Rfila).^2))./(Ifila);
lambda3 = 450*10^(-9);
a = 0.8299;
deltaa = 0.0014;
b = 5.6869;
deltab = 0.0030;
ro = 0.2874;
deltaro = 0.0027;
T = exp(b)*(Rfila/ro).^(a);
deltat = T.*sqrt((deltar*a./Rfila).^2+(deltaro*a/ro)^2+(deltaa*log(Rfila./ro)).^2+(deltab)^2);
deltat(1)
T1 = T(1);
I1 = Ilumi(1);
x = 0;
y = 0;
for i = 2:size(T)(2)
  x(i-1) = (1/T(i))-(1/T1);
  y(i-1) = log(I1/Ilumi(i));
end

N = size(x)(2)

sxy = sum(x.*y);
sxx = sum(x.*x);
syy = sum(y.*y);
sx = sum(x);
sy = sum(y);
pend = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
const = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((pend*x)+const)).^2;
sei = sum(e);
incertidumconstrepend=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumconstreconst=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

xx = 0:0.00001:0.0002;
yy = pend.*xx+const;

figure(1); clf;
plot(x,y,'b*',xx,yy,'-k')
legend('Datos experimentales','Ajuste - MMC','Location','southeast') 
xlabel('\fontsize{15}((1/T_{\xi})-(1/T_{1}))[1/K]');ylabel('\fontsize{15}log(I(T_{1})/I(T_{\xi}))');
title('Ajuste por minimos cuadrados')
text (0.00005, 5, strcat ('\fontsize{14} y = (30.34\pm0.38)k x -(0.105\pm0.032)\rightarrow '));
print -djpeg -r100 grafica_planck.jpg