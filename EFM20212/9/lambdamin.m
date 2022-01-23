clear all; close all;
Vr= [2	2.1	2.2	2.3	2.4	2.5	2.6	2.7	2.8	2.9	3	3.1	3.2	3.3	3.4	3.5	3.6	3.7	3.8	3.9	4];
I=[19.8	16.9	16.2	17.2	18.9	16.5	18.2	19.4	18.1	14.2	19.6	23.6	31.2	58.5	146.9	277.1	466.2	663.5	826.6	943	1059.7];
volmax = 3.3; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que esta el 0
N=find(Vr == volmax);
x(1) = 0; y(1) = 0;
x = Vr(1:N);
y = I(1:N);

prom=mean(y)
destan=std(y)
size(y,2)

xx = min(Vr):(max(Vr)-min(Vr))/100:max(Vr);Isup =prom+3*destan; Iprom= prom; Iinf = prom-3*destan; deltaI = 3*destan;
yysup = Isup*ones(1,length(xx));
yyprom = Iprom*ones(1,length(xx));
yyinf = Iinf*ones(1,length(xx));
Vosup=3.3; %%%%%%%%%%%%%%%%%%%% <-------------
Voinf=3.5; %%%%%%%%%%%%%%%%%%%% <-------------SELECCIONAR el rango para el cual se considera que esta el primer voltaje fuera de la region 0
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
axis([min(Vr) max(Vr) min(I) max(I)])
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales')
title('Primera consideracion de puntos como I=0')

figure(2);clf;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1)
plot (Vr,I,'r.',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
axis([min(Vr) max(Vr) min(I) max(I)])
title('A)')
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','Location','northwest')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,2)
plot (Vr,I,'r.',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-');grid on;
title('B)')
xlabel('V_{r}[V]');ylabel('I[A]');
axis([min(Vr) max(Vr) min(I) 200])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3);clf;
plot (Vr,I,'r*',xx,yysup,'m-',xx,yyprom,'b-',xx,yyinf,'m-',xf1,yf1,'g',xf2,yf2,'k',xf3,yf3,'g');grid on;
title('C)')
axis([xinf xsup yinf ysup])
xlabel('V_{r}[V]');ylabel('I[A]');
legend('Datos Experimentales','I_{prom}+3\sigma','I_{prom}','I_{prom}-3\sigma','V_{o-sup}','V_{o}','V_{o-inf}','Location','southwest')