clear all; close all;
Vr=[0	0	-0.02	-0.04	-0.06	-0.07	-0.09	-0.11	-0.13	-0.14	-0.16	-0.19	-0.2	-0.23	-0.24	-0.26	-0.28	-0.29	-0.31	-0.32	-0.33	-0.35	-0.37	-0.39	-0.41	-0.44	-0.45	-0.48	-0.49	-0.51	-0.53	-0.56	-0.59	-0.61	-0.64	-0.66	-0.69	-0.7	-0.72	-0.75	-0.77	-0.79	-0.81	-0.83	-0.85	-0.87	-0.89	-0.91	-0.94	-0.96	-0.99	-1.01	-1.04	-1.06	-1.1	-1.12	-1.15	-1.18	-1.19	-1.19	-1.21	-1.24	-1.26	-1.28	-1.3	-1.33	-1.36	-1.38	-1.41	-1.44	-1.48	-1.51	-1.54	-1.56	-1.59	-1.61	-1.64	-1.66	-1.69	-1.71	-1.74	-1.76	-1.79	-1.82	-1.84	-1.87	-1.9	-1.92	-1.96	-1.98	-2.01	-2.03	-2.06	-2.08	-2.11	-2.14	-2.17	-2.2	-2.22	-2.25	-2.28	-2.31	-2.33	-2.36	-2.39	-2.41	-2.43	-2.45	-2.48	-2.5	-2.52	-2.55	-2.56	-2.6	-2.61	-2.64	-2.66	-2.69	-2.71	-2.74	-2.76	-2.78	-2.78	-2.79	-2.82	-2.83	-2.86	-2.89	-2.92	-2.94	-2.97	-2.99	-3.02	-3.06	-3.09	-3.12	-3.15	-3.17	-3.19	-3.21	-3.24	-3.27	-3.29	-3.33	-3.36	-3.38	-3.42	-3.44	-3.47	-3.5	-3.53	-3.56	-3.58	-3.6	-3.63	-3.65	-3.67	-3.71	-3.73	-3.77	-3.78	-3.8];
I=[69.7	69.8	68.8	67.2	65.7	64	61.8	61.2	60	57.8	57	55.1	54.4	52.4	50.8	49.1	47.3	46.5	45.4	44.7	43.8	42.3	40.7	39.2	38	36.7	35.5	33.8	32.4	31.2	29.6	28.4	26.6	25.6	24.1	22.6	21.3	19.7	18.4	17	16.2	15.1	14.8	13.1	12.5	11.6	10.6	9.8	8.7	7.8	6.5	6.1	5.2	4.8	3.7	3.5	2.7	2.3	1.8	1.9	1.4	1.2	1	0.8	0.4	0.2	-0.1	-0.3	-0.5	-0.6	-0.8	-0.7	-0.8	-0.8	-0.8	-0.7	-0.8	-0.7	-0.8	-0.7	-0.8	-0.7	-0.8	-0.8	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-0.9	-1.1	-1	-1	-1	-1	-1	-1	-1.1	-1	-1	-1	-1	-1	-1	-0.9	-1	-1	-1	-0.8	-0.9	-0.8	-0.9	-0.8	-0.8	-0.8	-0.9	-0.8	-0.8	-0.7	-0.8	-0.9	-0.8	-0.9	-0.9	-0.9	-0.8	-0.9	-0.9	-1	-1.1	-1.1	-1	-0.9	-0.9	-0.8	-0.9	-1	-1	-1	-1	-0.9	-0.9	-1	-0.9	-1	-1	-1	-1	-1	-1	-1	-0.9	-1	-1.1	-1	-1	-0.9	-0.9];
volmax = -1.3; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
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
Vosup=-1.36; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=-1.24; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
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