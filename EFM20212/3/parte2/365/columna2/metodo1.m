clear all; close all;
Vr=[0	-0.02	-0.04	-0.05	-0.07	-0.1	-0.11	-0.13	-0.16	-0.17	-0.2	-0.21	-0.23	-0.25	-0.27	-0.29	-0.31	-0.33	-0.35	-0.38	-0.4	-0.43	-0.45	-0.47	-0.5	-0.52	-0.55	-0.58	-0.62	-0.63	-0.67	-0.69	-0.71	-0.74	-0.77	-0.8	-0.83	-0.86	-0.89	-0.91	-0.96	-0.99	-1.01	-1.06	-1.09	-1.12	-1.15	-1.18	-1.2	-1.23	-1.26	-1.28	-1.32	-1.35	-1.39	-1.41	-1.45	-1.47	-1.5	-1.53	-1.55	-1.58	-1.61	-1.64	-1.67	-1.7	-1.74	-1.78	-1.81	-1.85	-1.89	-1.93	-1.95	-1.99	-2.02	-2.05	-2.09	-2.12	-2.16	-2.2	-2.24	-2.28	-2.32	-2.36	-2.4	-2.44	-2.48	-2.53	-2.56	-2.6	-2.64	-2.68	-2.7	-2.74	-2.77	-2.79	-2.83	-2.86	-2.9	-2.92	-2.96	-2.99	-3.03	-3.06	-3.11	-3.14	-3.18	-3.21	-3.25	-3.28	-3.32	-3.36	-3.39	-3.44	-3.47	-3.5	-3.53	-3.58	-3.62	-3.65	-3.7	-3.74	-3.77	-3.8	-3.82	-3.85	-3.89	-3.93	-3.96	-3.98	-3.98];
I=[69.1	68.3	65.9	66.2	63.7	62	61	59.8	57.6	56.9	55	55.2	52.8	51.3	50.1	49.5	47.1	44.8	44	41.6	41.2	39.6	38.1	37.3	35.9	34.9	33.1	32.2	30.1	31	29.6	28.2	27	25.6	23.9	22.4	21.1	20.1	18.8	17.5	17.1	15.6	14.1	12.8	11.7	10.4	9.1	8.3	7.5	6.8	6.1	5.5	5	4.4	3.7	3	2.5	1.8	1.5	0.9	0.8	0.4	0.3	0.1	-0.1	-0.2	-0.4	-0.4	-0.6	-0.7	-0.8	-0.8	-0.8	-0.9	-1	-1	-1	-1	-1.1	-1.1	-1	-1	-1	-1	-1	-1	-0.8	-0.9	-1	-1.1	-1.1	-1.2	-1.1	-1.1	-1.1	-1	-1	-0.9	-1	-1	-1.1	-1	-1.2	-1	-1.1	-1	-1	-1	-1	-1	-0.9	-1	-0.9	-1	-1	-1	-1.2	-1.2	-1.2	-1	-1.1	-0.9	-1	-0.9	-1	-1	-1	-0.9	-1	-1	-0.8];
volmax = -1.64; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
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
Vosup=-1.7; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=-1.58; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
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