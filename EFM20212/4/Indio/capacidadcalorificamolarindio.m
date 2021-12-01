clear all; close all;
t = [0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28	29	30	31	32	33	34	35	36	37	38	39	40	41	42	43	44	45	46	47	48	49	50	51	52	53	54	55	56	57	58	59	60	61	62	63	64	65	66	67	68	69	70	71	72	73	74	75	76	77	78	79	80	81	82	83	84	85	86	87	88	89	90	91	92	93	94	95	96	97	98	99	100];
m = [130.3	130.25	130.19	130.16	130.16	130.08	129.97	130.04	129.93	129.91	129.85	129.78	129.69	129.62	129.7	129.57	129.63	129.46	129.47	129.47	129.4	129.3	129.21	129.22	129.14	129	129.23	128.87	129.04	129.11	128.83	128.89	128.9	128.85	128.76	128.64	128.09	128.38	128.67	128.27	128.91	128.5	128.14	128.31	128.06	128.28	127.68	127.78	128	127.37	127.3	127.36	126.78	126.96	126.66	126.68	127.21	126.71	126.82	126.29	126.64	126.96	126.14	126.73	126.37	126.9	126.09	126.63	126.21	125.8	126.23	126.68	126.51	125.59	125.78	125.76	125.42	125.88	126.13	126.12	125.98	125.91	125.53	125.72	125.73	125.17	125.21	125.37	124.63	125.4	125.32	125.54	125.6	124.5	125.51	125.52	124.77	124.57	124.91	124.48	124.67]; 

%%%%%%% Se rellenan los arreglos nuevos con los datos pertenecientes a las dos rectas de interes 
r1tmax = 48; r2tmin = 61; %<----------------------- SELECCIONAR valor maximo para la recta 1 de TIEMPO, y valor minimo para la recta 2 de TIEMPO 
n=find(t==r1tmax); 
x(1) = 0; y(1) = 0; x = t(1:n); y = m(1:n); Ns = length(t);
i=find(t==r2tmin); 
x2 = t(i:Ns); y2 = m(i:Ns);

%%%%%%% Constantes fisicas 
L = 199; m0elem = 6.2; deltam0 = 0.1; deltat = 293-77; deltadeltat = sqrt(2); mmolar = 114.818;

%%%%%%% se realiza ajuste por minimos cuadrados a ambas rectas
N = size(x)(2)
sxy = sum(x.*y);sxx = sum(x.*x);syy = sum(y.*y);sx = sum(x);sy = sum(y);
a1 = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b1 = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a1*x)+b1)).^2;sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

N2 = size(x2)(2)
sx2y2 = sum(x2.*y2);sx2x2 = sum(x2.*x2);sy2y2 = sum(y2.*y2);sx2 = sum(x2);sy2 = sum(y2);
a2 = (((N2)*(sx2y2))-((sx2)*(sy2)))/(((N2)*(sx2x2))-((sx2)*(sx2)))
b2 = (((sx2x2)*(sy2))-((sx2)*(sx2y2)))/(((N2)*(sx2x2))-((sx2)*(sx2)))
e2 = (y2-((a2*x2)+b2)).^2;sei2 = sum(e2);
iN2certidumbrea=sqrt((sei2)/(N2-2))*sqrt((N2)/(((N2)*(sx2x2))-((sx2)*(sx2))))
iN2certidumbreb=sqrt((sei2)/(N2-2))*sqrt((sx2x2)/(((N2)*(sx2x2))-((sx2)*(sx2))))
r2 = (((N2)*(sx2y2))-((sx2)*(sy2)))/(sqrt(((N2)*(sx2x2))-((sx2)*(sx2)))*sqrt(((N2)*(sy2y2))-((sy2)*(sy2))))

%%%%%%% Calor especifico y calor especifico molar
tmed= (r2tmin-r1tmax)/2 + r1tmax
deltam = (a1*tmed+b1)-(a2*tmed+b2)
incertidumbredm = sqrt(incertidumbrea^2*tmed^2+incertidumbreb^2+iN2certidumbrea^2*tmed^2+iN2certidumbreb^2)
ceng = (deltam*L)/(m0elem*deltat)
deltaceng = ceng*sqrt((incertidumbredm/deltam)^2+(deltam0/m0elem)^2+(deltadeltat/deltat)^2)
cenmol = ceng*mmolar
deltacenmol = mmolar*deltaceng

%%%%%%% rectas ajuste MMC
xx1=t(1):0.1:t(n); yy1=a1*xx1+b1; xx2=t(n):0.01:((t(Ns)-t(i))/2 + t(i)); yy2=a1*xx2+b1;
xx3=t(n)/2:0.01:t(i); yy3=a2*xx3+b2; xx4=t(i):0.1:t(Ns); yy4=a2*xx4+b2;
yyinf = 124:0.01:(a1*r1tmax+b1); xxinf = r1tmax*ones(1,length(yyinf));
yymed = 124:0.01:(a1*tmed+b1); xxmed = tmed*ones(1,length(yymed));
yysup = 124:0.01:(a1*r2tmin+b1); xxsup = r2tmin*ones(1,length(yysup));

%%%%%%% figuras
figure(1);clf;
subplot(3,1,1)
plot (t,m,'k*')
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
subplot(3,1,2)
plot (x,y,'r*'); axis([0 100 124 131])   %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
subplot(3,1,3)
plot (x2,y2,'g*'); axis([0 100 124 131]) %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
print -djpeg -r100 calormuestraindio1.jpg

figure(2);clf;
hold on;
plot(t,m,'k.',xx2,yy2,'m--','linewidth',3,xx3,yy3,'m--','linewidth',3,xxinf,yyinf,'k',xxmed,yymed,'r',xxsup,yysup,'k',xx1,yy1,'m-','linewidth',3,xx4,yy4,'m-','linewidth',3)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales','Extrapolacion recta superior','Extrapolacion recta inferior','T_{1}','T_{med}','T_{3}')
title('Extrapolacion de rectas obtenidas de MC y \Delta{M} para muestra de Indio')
hold off;
print -djpeg -r100 calormuestraindio2.jpg