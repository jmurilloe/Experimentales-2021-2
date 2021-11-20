clear all; close all;
Vr=[0	0	0	-0.03	-0.05	-0.06	-0.08	-0.09	-0.1	-0.11	-0.13	-0.16	-0.17	-0.18	-0.21	-0.22	-0.24	-0.25	-0.27	-0.29	-0.3	-0.31	-0.32	-0.34	-0.36	-0.37	-0.38	-0.39	-0.41	-0.43	-0.44	-0.46	-0.48	-0.49	-0.52	-0.53	-0.56	-0.58	-0.6	-0.63	-0.65	-0.68	-0.69	-0.72	-0.73	-0.75	-0.77	-0.79	-0.82	-0.84	-0.87	-0.89	-0.92	-0.94	-0.96	-0.98	-1.02	-1.03	-1.06	-1.07	-1.1	-1.12	-1.15	-1.17	-1.2	-1.22	-1.25	-1.27	-1.3	-1.32	-1.36	-1.39	-1.42	-1.45	-1.48	-1.5	-1.54	-1.56	-1.59	-1.62	-1.64	-1.67	-1.69	-1.73	-1.76	-1.8	-1.83	-1.86	-1.89	-1.93	-1.95	-1.99	-2.01	-2.05	-2.08	-2.11	-2.14	-2.17	-2.21	-2.25	-2.28	-2.31	-2.34	-2.37	-2.41	-2.43	-2.46	-2.5	-2.53	-2.57	-2.6	-2.63	-2.66	-2.69	-2.72	-2.75	-2.78	-2.8	-2.82	-2.85	-2.87	-2.91	-2.94	-2.97	-2.99	-3.03	-3.06	-3.1	-3.13	-3.16	-3.19	-3.22	-3.25	-3.28	-3.31	-3.35	-3.39	-3.42	-3.45	-3.49	-3.52	-3.55	-3.58	-3.59	-3.61	-3.63	-3.66	-3.69	-3.72	-3.76	-3.79	-3.83	-3.86	-3.91	-3.95	-3.98	-3.98	-3.98];
I=[50.4	50.5	50.2	49.1	47.8	46.7	47	45.6	44.8	43.9	43.2	41.8	41	40	39.4	38	36.7	35.6	35	34.1	33.6	32.7	31.6	31.1	30.3	29.9	29.1	28.1	27.8	26.8	25.5	24.8	23.9	23.8	23.5	22.5	21	19.4	18.6	17.2	16.4	15.3	14.8	14	13.2	12.4	11.5	10.8	10	9.4	8.6	7.8	7.1	6.3	5.7	5	4.4	4	3.6	3.3	2.7	2.3	1.9	1.5	1.1	1	0.6	0.4	0.1	-0.1	-0.2	-0.4	-0.5	-0.7	-0.7	-0.8	-0.9	-0.8	-0.9	-0.9	-0.9	-0.9	-0.9	-1	-1	-1.1	-0.9	-1.1	-1	-1	-0.8	-1	-0.8	-1	-0.9	-1	-0.9	-1	-1.1	-1.1	-1	-1	-1	-1	-1.1	-1	-1	-1.1	-1.1	-1.2	-1	-1.1	-1	-1	-1	-1.1	-1	-1	-1.1	-1.1	-1	-1.1	-1.1	-1.1	-1	-1.1	-1	-1.1	-1	-1.1	-1	-1	-0.9	-1	-0.9	-0.9	-1	-0.9	-1	-0.9	-0.9	-0.9	-1	-0.9	-0.9	-0.8	-1	-1	-1	-1	-1	-1.1	-1.1	-1.2	-1.1	-1.1	-0.9	-0.9];
volmax = -1.36; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
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
Vosup=-1.42; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=-1.3; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
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