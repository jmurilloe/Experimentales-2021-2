clear all; close all;
Vr= [-0.02	-0.04	-0.06	-0.08	-0.09	-0.11	-0.12	-0.14	-0.17	-0.2	-0.23	-0.26	-0.27	-0.3	-0.31	-0.34	-0.38	-0.4	-0.43	-0.45	-0.48	-0.49	-0.53	-0.54	-0.58	-0.6	-0.63	-0.65	-0.68	-0.7	-0.72	-0.74	-0.77	-0.79	-0.79	-0.83	-0.83	-0.85	-0.87	-0.89	-0.91	-0.94	-0.96	-0.98	-1	-1.03	-1.05	-1.08	-1.1	-1.12	-1.14	-1.17	-1.19	-1.22	-1.25	-1.27	-1.29	-1.32	-1.34	-1.36	-1.38	-1.4	-1.42	-1.44	-1.47	-1.49	-1.52	-1.53	-1.57	-1.58	-1.61	-1.63	-1.65	-1.68	-1.7	-1.73	-1.76	-1.79	-1.82	-1.85	-1.87	-1.9	-1.92	-1.94	-1.96	-1.98	-1.99	-2.01	-2.03	-2.05	-2.08	-2.1	-2.13	-2.16	-2.19	-2.23	-2.25	-2.29	-2.31	-2.34	-2.36	-2.38	-2.39	-2.41	-2.44	-2.46	-2.49	-2.52	-2.55	-2.57	-2.59	-2.62	-2.64	-2.68	-2.71	-2.74	-2.77	-2.79	-2.81	-2.84	-2.86	-2.89	-2.92	-2.94	-2.99	-3.01	-3.06	-3.08	-3.11	-3.14	-3.17	-3.18	-3.21	-3.23	-3.26	-3.3	-3.32	-3.36	-3.38	-3.4	-3.43	-3.46	-3.49	-3.51	-3.54	-3.56	-3.58	-3.61	-3.63	-3.66	-3.69	-3.73];
I= [49.7	48.9	48	47.2	46	45.6	44.6	43.6	42.6	41.1	39.2	38.5	36.8	36.4	35.2	34.6	33.2	32.1	30.9	30	28.5	27.7	26.6	25.6	24.6	23.6	22.6	21.7	20.7	19.9	18.8	18.5	17.3	16.4	15.8	15.3	14.6	14.2	13.5	12.9	12.1	11.5	10.7	10.3	9.6	9.2	8.2	7.8	7.2	6.7	6	5.6	5	4.7	4.1	3.9	3.4	3.1	2.8	2.5	2.2	2	1.7	1.4	1.2	0.9	0.6	0.5	0.3	0.1	0.1	-0.2	-0.3	-0.5	-0.5	-0.6	-0.6	-0.9	-0.7	-0.8	-0.7	-0.8	-0.7	-0.8	-0.8	-0.9	-0.8	-0.8	-0.8	-0.7	-0.9	-1	-0.9	-1	-1	-1	-0.8	-0.9	-0.8	-0.9	-0.9	-0.9	-0.9	-1	-0.9	-0.8	-0.9	-0.9	-0.9	-1	-1	-1.1	-1	-1.1	-0.9	-1	-0.9	-0.9	-0.9	-0.9	-1	-1	-1.1	-1	-1.2	-1	-1	-0.9	-0.9	-1	-0.9	-0.9	-0.9	-1.1	-1	-1	-0.9	-1	-0.9	-1	-1.1	-1	-1	-0.9	-1	-0.9	-0.9	-1	-1	-1.1	-1.1	-1.1];
volmax = -1.65; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
N=find(Vr == volmax);
n = 0; x(1) = 0; y(1) = 0;
for n = N:size(Vr,2)
  x(n-(N-1)) = Vr(n);
  y(n-(N-1)) = I(n);
end

prom=mean(y)
destan=std(y)
size(y,2)
xx = -4:1:0;Isup =prom+3*destan; Iprom= prom; Iinf = prom-3*destan; deltaI = 3*destan;
yysup = Isup*ones(1,5);
yyprom = Iprom*ones(1,5);
yyinf = Iinf*ones(1,5);
Vosup=-1.68; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=-1.57; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
Vo=(Vosup+Voinf)/2
deltaVo=Vo-Vosup
xinf = Vo-((0.4/0.1)-1)*deltaVo; xsup = Vo+((0.4/0.1)-1)*deltaVo; ysup = Iprom+((0.45/0.05)-1)*deltaI;yinf = Iprom-((0.45/0.05)-1)*deltaI;
yf1= yinf:0.1:ysup;
xf1= Vosup*ones(1,length(yf1));
yf2= yinf:0.1:ysup;
xf2= Vo*ones(1,length(yf2));
yf3= yinf:0.1:ysup;
xf3= Voinf*ones(1,length(yf3));

figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1:2)
plot (Vr,I,'r.');grid on;
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales','Location','northwest')
title('Relacion de I en funcion de V_{r}')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3:4)
plot (x,y,'c.');grid on;
axis([-4 0 -20 100])
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales')
title('Primera consideracion de puntos como I=0')

figure(2);clf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1)
plot (Vr,I,'r.',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
axis([-4 0 -20 100])
title('A)')
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','Location','northwest')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,2)
plot (Vr,I,'r.',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
title('B)')
xlabel('V_{r}[V]');ylabel('I[A]');
axis([-4 0 -2 0.5])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);clf;
plot (Vr,I,'r*',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-',xf1,yf1,'g',xf2,yf2,'k',xf3,yf3,'g');grid on;
title('C)')
axis([xinf xsup yinf ysup])
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','V_{o-sup}','V_{o}','V_{o-inf}','Location','southwest')