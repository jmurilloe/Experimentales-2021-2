clear all; close all;
Vr = [2.4	2.42	2.44	2.46	2.48	2.5	2.52	2.54	2.56	2.58	2.6	2.62	2.64	2.66	2.68	2.7	2.72	2.74	2.76	2.78	2.8	2.82	2.84	2.86	2.88	2.9	2.92	2.94];
I = [0	0	0	0	0	0	0	0	0	0	0.01	0.01	0.02	0.03	0.05	0.08	0.14	0.23	0.39	0.65	1.09	1.83	3.07	5.15	8.62	14.44	24.18	40.5];
volmax = 2.78; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
N=find(Vr == volmax);
x = Vr(1:N); y = I(1:N);

prom=mean(y)
destan=std(y)
size(y,2)
xx = min(Vr):0.01:max(Vr);Isup =prom+3*destan; Iprom= prom; Iinf = prom-3*destan; deltaI = 3*destan;
yysup = Isup*ones(1,length(xx)); yyprom = Iprom*ones(1,length(xx)); yyinf = Iinf*ones(1,length(xx));
Vosup=2.84; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=2.78; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
Vo=(Vosup+Voinf)/2
deltaVo=Vosup-Vo
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
plot (Vr,I,'r*');grid on;
xlabel('V_{D}[V]');ylabel('I[mA]');
legend('Datos Experimentales','Location','northwest')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3:4)
plot (x,y,'c*');grid on;
axis([min(Vr) max(Vr) min(I) max(I)])
xlabel('V_{D}[V]');ylabel('I[mA]');
legend('Datos Experimentales')
print -djpeg -r100 seleccionzona0LEDazul.jpg

figure(2);clf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1)
plot (Vr,I,'r*',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
axis([min(Vr) max(Vr) min(I) max(I)])
title('A)')
xlabel('V_{D}[V]');ylabel('I[mA]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','Location','northwest')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,2)
plot (Vr,I,'r.',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
title('B)')
xlabel('V_{D}[V]');ylabel('I[mA]');
axis([min(Vr) max(Vr) -1 1])
print -djpeg -r100 zona0LEDazul.jpg

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);clf;
plot (Vr,I,'r*',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-',xf1,yf1,'g',xf2,yf2,'k',xf3,yf3,'g');grid on;
title('Region de interes para V_{o} en un LED azul')
axis([xinf xsup yinf ysup])
xlabel('V_{D}[V]');ylabel('I[mA]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','V_{o-sup}','V_{o}','V_{o-inf}','Location','southeast')
print -djpeg -r100 v0LEDazul.jpg