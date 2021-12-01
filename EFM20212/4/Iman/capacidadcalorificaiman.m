clear all; close all;
t = [0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28	29	30	31	32	33	34	35	36	37	38	39	40	41	42	43	44	45	46	47	48	49	50	51	52	53	54	55	56	57	58	59	60	61	62	63	64	65	66	67	68	69	70	71	72	73	74	75	76	77	78	79	80	81	82	83	84	85	86	87	88	89	90	91	92	93	94	95	96	97	98	99	100	101	102	103	104	105	106	107	108	109	110	111	112	113	114	115	116	117	118	119	120	121	122	123	124	125	126	127	128	129	130	131	132	133	134	135	136	137	138	139	140	141	142	143	144	145	146	147	148	149	150	151	152	153	154	155	156	157	158	159	160	161	162	163	164	165	166	167	168	169	170	171	172	173	174	175	176	177	178	179	180	181	182	183	184	185	186	187	188	189	190	191	192	193	194	195	196	197	198	199	200	201	202	203	204	205	206	207	208	209	210	211	212	213	214	215	216	217	218	219	220	221	222	223	224	225	226	227	228	229	230	231	232	233	234	235	236	237	238	239	240	241	242	243	244	245	246	247	248	249	250];
m = [156.8	156.74	156.69	156.67	156.58	156.53	156.45	156.47	156.44	156.42	156.31	156.31	156.19	156.15	155.85	156.2	155.84	155.91	155.76	155.28	155.49	155.88	155.67	155.91	155.23	155.28	155.25	154.91	155.5	155.7	155.35	155.24	154.88	155.15	155.25	154.99	155.03	155.1	155.01	154.58	154.73	154.58	154.17	154.24	154.71	154.35	154.12	154.36	154.47	153.94	153.6	153.94	153.71	153.71	153.33	154.4	153.37	153.2	153.5	153.52	152.88	153.39	153.05	151.78	152.49	152.34	152.25	151.8	151.65	151.48	151.27	151.23	150.47	150.33	149.93	150.01	150.43	149.64	149.89	149.2	149.23	148.91	148.31	149.04	148.1	148.12	147.45	147.19	147.48	147.08	147.04	146.53	146.12	146.08	146.42	146.29	145.33	145.77	145.29	145.64	145.09	144.69	144.24	144.49	143.3	143.55	143.63	143.69	143.16	143.3	142.45	142.74	142.86	143.43	143.43	142.93	143.14	142.64	143.78	142.4	143.66	142.84	142.69	140.65	143.2	142.67	142.21	142.04	142.34	143.17	141.24	143.32	141.54	140.64	141.36	140.9	141.1	141.41	141.38	140.9	141.79	140.21	139.96	141.37	141.41	140.76	141.58	141.68	140.63	141.12	141.36	141.94	141.56	140.66	140.3	142.05	140.93	139.65	139.4	142.07	141.16	140.81	140.99	139.92	137.89	138.11	139.16	139.37	140.47	139.86	139.87	141.18	140.04	140.2	139.04	140.85	138.67	139.02	140.19	138.65	140.11	137.84	139.05	139.88	136.37	138.69	138.4	140.34	139.98	138.36	140.95	140.06	138.03	137.67	138.22	138.28	139.57	139.77	138.17	135.84	139.07	137.18	140.73	137.58	139.23	136.55	137.51	137.06	136.33	138.73	138.06	137.96	135.97	137	138.33	136.84	136.89	139.71	136.92	137.66	138.55	136.5	136.56	136.35	135.38	135.52	137.48	137.58	135.7	136.48	136.68	135.45	135.48	133.01	135.03	134.69	134.08	135.89	135.68	135.33	133.61	137.39	135.8	135.11	136.05	139.09	135.03	134.78	134.97	133.23	134.58];

%%%%%%% Se rellenan los arreglos nuevos con los datos pertenecientes a las dos rectas de interes 
r1tmax = 55; r2tmin = 115; %<----------------------- SELECCIONAR valor maximo para la recta 1 de TIEMPO, y valor minimo para la recta 2 de TIEMPO 
n=find(t==r1tmax); 
x(1) = 0; y(1) = 0; x = t(1:n); y = m(1:n); Ns = length(t);
i=find(t==r2tmin); 
x2 = t(i:Ns); y2 = m(i:Ns);

%%%%%%% Constantes fisicas 
L = 199; m0elem = 29.5; deltam0 = 0.1; deltat = 293-77; deltadeltat = sqrt(2);
mmolar1 = 58.93; mmolar2 = 55.845; mmolar3 = 58.693; mmolar4 = 157.25; mmolar5 = 162.50; % 1 = cobalto, 2 = hierro, 3 = niquel, 4 = gadolinio, 5 = disprosio 
mmolar6 = 114.538 ; mmolar7 = 202.57; mmolar8 = 434.41; mmolar9 = 231.533; % 6 = permalloy hierro niquel 1 a 1, 7 = awaruite, 8 = Wairakite, 9 = magnetite

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
cenmol1 = ceng*mmolar1
deltacenmol1 = mmolar1*deltaceng
cenmol2 = ceng*mmolar2
deltacenmol2 = mmolar2*deltaceng
cenmol3 = ceng*mmolar3
deltacenmol3 = mmolar3*deltaceng
cenmol4 = ceng*mmolar4
deltacenmol4 = mmolar4*deltaceng
cenmol5 = ceng*mmolar5
deltacenmol5 = mmolar5*deltaceng
cenmol6 = ceng*mmolar6
deltacenmol6 = mmolar6*deltaceng
cenmol7 = ceng*mmolar7
deltacenmol7 = mmolar7*deltaceng
cenmol8 = ceng*mmolar8
deltacenmol8 = mmolar8*deltaceng
cenmol9 = ceng*mmolar9
deltacenmol9 = mmolar9*deltaceng

%%%%%%% rectas ajuste MMC
xx1=t(1):0.1:t(n); yy1=a1*xx1+b1; xx2=t(n):0.01:((t(Ns)-t(i))/2 + t(i)); yy2=a1*xx2+b1;
xx3=t(n)/2:0.01:t(i); yy3=a2*xx3+b2; xx4=t(i):0.1:t(Ns); yy4=a2*xx4+b2;
yyinf = 130:0.01:(a1*r1tmax+b1); xxinf = r1tmax*ones(1,length(yyinf));
yymed = 130:0.01:(a1*tmed+b1); xxmed = tmed*ones(1,length(yymed));
yysup = 130:0.01:(a1*r2tmin+b1); xxsup = r2tmin*ones(1,length(yysup));

%%%%%%% figuras
figure(1);clf;
subplot(3,1,1)
plot (t,m,'k*')
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
subplot(3,1,2)
plot (x,y,'r*'); axis([0 250 130 160])   %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
subplot(3,1,3)
plot (x2,y2,'g*'); axis([0 250 130 160]) %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales')
print -djpeg -r100 calormuestraiman1.jpg

figure(2);clf;
hold on;
plot(t,m,'k.',xx2,yy2,'m--','linewidth',3,xx3,yy3,'m--','linewidth',3,xxinf,yyinf,'k',xxmed,yymed,'r',xxsup,yysup,'k',xx1,yy1,'m-','linewidth',3,xx4,yy4,'m-','linewidth',3)
xlabel('Tiempo (s)'); ylabel('Masa total, M(g)'); legend('Datos Experimentales','Extrapolacion recta superior','Extrapolacion recta inferior','T_{1}','T_{med}','T_{3}')
title('Extrapolacion de rectas obtenidas de MC y \Delta{M} para muestra de Iman')
hold off;
print -djpeg -r100 calormuestraiman2.jpg