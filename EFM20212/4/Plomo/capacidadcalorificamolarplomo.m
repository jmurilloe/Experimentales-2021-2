clear all; close all;
t = [0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28	29	30	31	32	33	34	35	36	37	38	39	40	41	42	43	44	45	46	47	48	49	50	51	52	53	54	55	56	57	58	59	60	61	62	63	64	65	66	67	68	69	70	71	72	73	74	75	76	77	78	79	80	81	82	83	84	85	86	87	88	89	90	91	92	93	94	95	96	97	98	99	100	101	102	103	104	105	106	107	108	109	110	111	112	113	114	115	116	117	118	119	120	121	122	123	124	125	126	127	128	129	130	131	132	133	134	135	136	137	138	139	140	141	142	143	144	145	146	147	148	149	150	151	152	153	154	155	156	157	158	159	160	161	162	163	164	165	166	167	168	169	170	171	172	173	174	175	176	177	178	179	180	181	182	183	184	185	186	187	188	189	190	191	192	193	194	195	196	197	198	199	200	201	202	203	204	205	206	207	208	209	210	211	212	213	214	215	216	217	218	219	220	221	222	223	224	225	226	227	228	229	230	231	232	233	234	235	236	237	238	239	240	241	242	243	244	245	246	247	248	249	250];
m = [216.2	216.15	216.11	216.06	216.01	215.96	215.92	215.86	215.82	215.77	215.73	215.68	215.64	215.58	215.54	215.5	215.46	215.4	215.34	215.31	215.25	215.2	215.17	215.12	215.07	215.03	214.97	214.92	214.89	214.84	214.79	214.74	214.69	214.66	214.59	214.56	214.49	214.45	214.4	214.38	214.32	214.25	214.24	214.16	214.11	214.05	214	213.95	213.91	213.9	213.85	213.83	213.72	213.7	213.64	213.6	213.57	213.51	213.5	213.41	213.36	213.31	213.32	213.21	213.19	213.15	213.08	213.08	212.95	212.92	212.92	212.82	212.81	212.76	212.69	212.65	212.6	212.59	212.55	212.28	211.71	212.04	211.28	211.49	210.91	211.26	211.21	210.04	209.89	209.97	209.82	209.82	209.48	208.86	209.43	209.61	208.91	208.47	208.71	208.3	208.13	207.78	207.47	206.7	207.33	207.2	206.34	206.49	207.22	205.89	205.35	206.04	205.71	206.44	205.01	204.72	204.79	204.98	204.03	203.95	204.08	204.59	202.98	204.14	203.18	203.81	203.49	202.82	202.43	202.7	202.05	201.84	202.14	201.35	200.86	201.44	201.72	201.04	201.04	200.99	200.95	200.91	200.79	200.8	200.72	200.7	200.59	200.49	200.5	200.51	200.5	200.34	200.33	200.29	200.19	200.28	200.23	200.19	200.04	200.05	200.02	200	199.8	199.87	199.74	199.68	199.73	199.59	199.66	199.53	199.45	199.41	199.34	199.35	199.34	199.15	199.15	199.22	199.17	198.91	199.01	199	198.98	198.92	198.78	198.87	198.65	198.83	198.71	198.66	198.49	198.58	198.5	198.36	198.35	198.1	198.26	198.2	198.2	198.13	198.03	198.02	197.82	197.96	197.93	197.78	197.79	197.71	197.64	197.64	197.65	197.47	197.51	197.53	197.44	197.18	197.49	197.28	197.25	197.2	197.12	196.99	196.95	196.99	196.96	196.83	196.9	196.83	196.69	196.58	196.81	196.54	196.47	196.39	196.42	196.47	196.38	196.27	196.32	196.29	196.24	196.07	196	196.22	195.98	196.02	195.91	195.73	195.86	195.84	195.76];

%%%%%%% Se rellenan los arreglos nuevos con los datos pertenecientes a las dos rectas de interes 
r1tmax = 78; r2tmin = 137; %<----------------------- SELECCIONAR valor maximo para la recta 1 de TIEMPO, y valor minimo para la recta 2 de TIEMPO 
n=find(t==r1tmax); 
x(1) = 0; y(1) = 0; x = t(1:n); y = m(1:n); Ns = length(t);
i=find(t==r2tmin); 
x2 = t(i:Ns); y2 = m(i:Ns);

%%%%%%% Constantes fisicas 
L = 199; m0elem = 63.7; deltam0 = 0.1;  deltat = 293-77; deltadeltat = sqrt(2); mmolar = 207.2;

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
yyinf = 195:0.01:(a1*r1tmax+b1); xxinf = r1tmax*ones(1,length(yyinf));
yymed = 195:0.01:(a1*tmed+b1); xxmed = tmed*ones(1,length(yymed));
yysup = 195:0.01:(a1*r2tmin+b1); xxsup = r2tmin*ones(1,length(yysup));

%%%%%%% figuras
figure(1);clf;
subplot(3,1,1)
plot (t,m,'k*')
subplot(3,1,2)
plot (x,y,'r*'); axis([0 250 195 220])   %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)
subplot(3,1,3)
plot (x2,y2,'g*'); axis([0 250 195 220]) %%%%%%% <----------- SELECCIONAR rangos que concuerden con la primer grafica subplot(3,1,1)

figure(2);clf;
hold on;
plot(t,m,'k.',xx1,yy1,'m-','linewidth',3,xx2,yy2,'m--','linewidth',3,xx3,yy3,'m--','linewidth',3,xx4,yy4,'m-','linewidth',3)
plot(xxinf,yyinf,'k',xxmed,yymed,'r',xxsup,yysup,'k')
hold off;