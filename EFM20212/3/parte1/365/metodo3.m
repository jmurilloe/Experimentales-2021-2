clear all; close all;
Vr = [0	0	-0.02	-0.04	-0.04	-0.06	-0.07	-0.09	-0.09	-0.11	-0.11	-0.13	-0.14	-0.15	-0.17	-0.19	-0.2	-0.22	-0.23	-0.24	-0.25	-0.25	-0.26	-0.27	-0.27	-0.28	-0.29	-0.3	-0.31	-0.32	-0.33	-0.34	-0.34	-0.35	-0.35	-0.35	-0.36	-0.36	-0.37	-0.38	-0.38	-0.38	-0.39	-0.39	-0.41	-0.41	-0.42	-0.43	-0.43	-0.45	-0.46	-0.46	-0.46	-0.47	-0.47	-0.48	-0.5	-0.51	-0.51	-0.52	-0.52	-0.53	-0.54	-0.55	-0.56	-0.57	-0.57	-0.58	-0.59	-0.6	-0.61	-0.62	-0.63	-0.64	-0.65	-0.66	-0.67	-0.68	-0.68	-0.69	-0.7	-0.71	-0.72	-0.72	-0.73	-0.74	-0.75	-0.76	-0.77	-0.78	-0.79	-0.79	-0.8	-0.81	-0.82	-0.83	-0.84	-0.85	-0.86	-0.87	-0.88	-0.9	-0.91	-0.92	-0.93	-0.95	-0.96	-0.97	-0.98	-0.99	-1	-1.02	-1.03	-1.04	-1.05	-1.06	-1.07	-1.09	-1.1	-1.11	-1.12	-1.13	-1.14	-1.16	-1.18	-1.19	-1.19	-1.19	-1.2	-1.21	-1.23	-1.24	-1.25	-1.26	-1.26	-1.28	-1.29	-1.3	-1.31	-1.32	-1.34	-1.36	-1.37	-1.38	-1.39	-1.4	-1.41	-1.43	-1.44	-1.45	-1.46	-1.47	-1.49	-1.5	-1.5	-1.51	-1.52	-1.53	-1.55	-1.55	-1.57	-1.58	-1.59	-1.6	-1.6	-1.61	-1.62	-1.63	-1.65	-1.66	-1.67	-1.68	-1.69	-1.71	-1.72	-1.74	-1.76	-1.77	-1.79	-1.8	-1.82	-1.84	-1.85	-1.87	-1.88	-1.9	-1.91	-1.92	-1.95	-1.96	-1.97	-1.98	-1.99	-2.01	-2.02	-2.04	-2.05	-2.06	-2.08	-2.09	-2.11	-2.12	-2.14	-2.16	-2.17	-2.18	-2.19	-2.22	-2.23	-2.25	-2.26	-2.27	-2.29	-2.3	-2.31	-2.33	-2.34	-2.36	-2.37	-2.39	-2.39	-2.41	-2.42	-2.44	-2.45	-2.47	-2.49	-2.5	-2.52	-2.53	-2.56	-2.56	-2.58	-2.6	-2.61	-2.63	-2.64	-2.66	-2.67	-2.69	-2.7	-2.72	-2.74	-2.76	-2.77	-2.78	-2.8	-2.81	-2.83	-2.83	-2.85	-2.86	-2.88	-2.9	-2.92	-2.94	-2.95	-2.98	-2.98	-3	-3.02	-3.03	-3.05	-3.06	-3.08	-3.09	-3.1	-3.12	-3.13	-3.14	-3.16	-3.17	-3.18	-3.18	-3.2	-3.21	-3.23	-3.23	-3.25	-3.26	-3.28	-3.3	-3.31	-3.33	-3.35	-3.36	-3.37	-3.38	-3.4	-3.41	-3.43	-3.44	-3.45	-3.48	-3.49	-3.51	-3.52	-3.54	-3.56	-3.57	-3.58	-3.59	-3.61	-3.61	-3.63	-3.64	-3.66	-3.68	-3.69	-3.71	-3.72	-3.74	-3.75	-3.77	-3.78	-3.8	-3.81	-3.83	-3.84	-3.86	-3.87	-3.89	-3.91	-3.93	-3.94	-3.96	-3.97];
I  = [94.9	94.5	93	91	90.2	87	86.8	85.5	84.3	83.7	82.9	82	80.9	79.4	78.9	76.6	75.6	74.1	72.9	71.9	71.3	70.5	69.5	68.9	68.6	68.1	67.2	66.6	65.3	64.9	64.3	63.3	62.5	61.9	61.5	61.2	60.8	60.7	60.5	59.7	59.4	58.5	58.8	58.4	57.5	56.2	56.2	55.6	55.1	54.2	52.8	52.8	53	52	51.7	51.4	50.4	49.8	49.2	48.5	47.9	47.6	46.9	46	46	45.3	44.8	44	43.6	43	42.5	41.3	41.3	40.4	39.9	38.9	38.1	38.1	37.4	37	36.8	35.5	34.9	34.6	34.2	33.7	33.1	33.5	32	30.9	30.4	30.2	30.1	29.5	29	27.8	27.9	27.1	26.6	26	25.3	24.7	24	23.2	22.8	22.1	21.1	20.7	20.3	19.6	19.1	18.1	17.2	16.8	16.3	15.9	15.4	14.4	13.7	13.4	13.2	12.7	12.3	11.3	10.5	10.2	10.1	10.2	10.1	9.4	8.9	8.6	8.5	8.4	8.1	7.8	7.1	6.8	6.8	6.8	6.3	5.5	5.3	5	4.7	4.4	4.1	3.8	3.4	3.2	3.2	3	2.7	2.5	2.5	2.3	2.1	1.9	1.7	1.6	1.5	1.3	1.2	1.1	1	1	0.9	1	0.8	0.6	0.5	0.4	0.3	0.1	0	0	-0.1	-0.2	-0.3	-0.3	-0.3	-0.4	-0.4	-0.6	-0.4	-0.5	-0.5	-0.5	-0.6	-0.5	-0.6	-0.5	-0.5	-0.6	-0.4	-0.6	-0.6	-0.5	-0.6	-0.5	-0.6	-0.5	-0.6	-0.7	-0.6	-0.7	-0.6	-0.6	-0.7	-0.6	-0.6	-0.6	-0.6	-0.6	-0.4	-0.6	-0.5	-0.7	-0.6	-0.4	-0.3	-0.1	-0.5	-0.6	-0.7	-0.5	-0.7	-0.7	-0.8	-0.6	-0.5	-0.6	-0.7	-0.6	-0.5	-0.7	-0.6	-0.7	-0.6	-0.6	-0.6	-0.8	-0.6	-0.7	-0.7	-0.7	-0.7	-0.6	-0.8	-0.7	-0.7	-0.7	-0.6	-0.8	-0.6	-0.7	-0.6	-0.7	-0.7	-0.7	-0.7	-0.6	-0.8	-0.6	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.6	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.6	-0.7	-0.7	-0.8	-0.8	-0.7	-0.7	-0.6	-0.6	-0.6	-0.8	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.8	-0.7	-0.7	-0.5	-0.7	-0.7	-0.7	-0.6	-0.5	-0.6	-0.4	-0.3	-0.3	-0.3];
%%%%%%%%%%%%%%%%%%%%%%%%%%Se calcula la derivada como la diferencia entre las corrientes sobre la diferencia de voltajes. Como se usa el paso siguiente, el vector tendra un tamanho...
%%%%%%%%%%%%%%%%%%%%%%%%%%... N-1 del vector original. Se ajuste Vr de acuerdo a esa necesidad.
for i = 1:(length(I)-3)
  didv(i) = (I(i+3)-I(i))/(Vr(i+3)-Vr(i));
end
Vrdidv=Vr(1:length(didv));
volmax = -1.65; %%%%%%%%%%%%%%%%%%%% <----------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que didv esta en 0
N=find(Vr == volmax);
%%%%Se genera dos vectores con la region considerada en que la derivada es 0.
x0 = Vrdidv(N:length(Vrdidv));y0 = didv(N:length(didv));
%%%%Se genera dos vectores con la region considerada en que la derivada no es 0.
xn0 = Vrdidv(1:N-1);yn0 = didv(1:N-1);

figure(1); clf; % se plotea la grafica original, la derivada, y las dos regiones de interes (donde la derivada es 0 y donde no)
subplot(4,1,1); plot(Vr,I,'r.'); axis([-4 0 -10 100]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('Datos Experimentales','Location','northwest');title('Relacion de I en funcion de V_{r}')
subplot(4,1,2); plot(Vrdidv,didv,'r.');grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('Datos Calculados','Location','northwest');title('Derivada de I en funcion de V_{r}')
subplot(4,1,3); plot(x0,y0,'m.'); axis([-4 0 -50 200]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('Datos Calculados','Location','northwest');title('Region considerada de pendiente 0')
subplot(4,1,4); plot(xn0,yn0,'c.'); axis([-4 0 -50 200]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('Datos Calculados','Location','northwest');title('Region considerada de pendiente diferente de 0')

%%%%%%%%%%%%%%%%%%%%Minimos cuadrados para x0,y0
size(x0)
size(y0)
N0 = size(x0)(2)
sx0y0 = sum(x0.*y0)
sx0x0 = sum(x0.*x0);sy0y0 = sum(y0.*y0);sx0 = sum(x0);sy0 = sum(y0);
a0 = (((N0)*(sx0y0))-((sx0)*(sy0)))/(((N0)*(sx0x0))-((sx0)*(sx0)))
b0 = (((sx0x0)*(sy0))-((sx0)*(sx0y0)))/(((N0)*(sx0x0))-((sx0)*(sx0)))
e0 = (y0-((a0*x0)+b0)).^2;sei0 = sum(e0);
deltaa0=sqrt((sei0)/(N0-2))*sqrt((N0)/(((N0)*(sx0x0))-((sx0)*(sx0))))
deltab0=sqrt((sei0)/(N0-2))*sqrt((sx0x0)/(((N0)*(sx0x0))-((sx0)*(sx0))))
r0 = (((N0)*(sx0y0))-((sx0)*(sy0)))/(sqrt(((N0)*(sx0x0))-((sx0)*(sx0)))*sqrt(((N0)*(sy0y0))-((sy0)*(sy0))))

%%%%%%%%%%%%%%%%%%%%Minimos cuadrados para xn0,yn0
size(xn0)
size(yn0)
Nn0 = size(xn0)(2)
sxn0yn0 = sum(xn0.*yn0);sxn0xn0 = sum(xn0.*xn0);syn0yn0 = sum(yn0.*yn0);sxn0 = sum(xn0);syn0 = sum(yn0);
a20 = (((Nn0)*(sxn0yn0))-((sxn0)*(syn0)))/(((Nn0)*(sxn0xn0))-((sxn0)*(sxn0)))
b20 = (((sxn0xn0)*(syn0))-((sxn0)*(sxn0yn0)))/(((Nn0)*(sxn0xn0))-((sxn0)*(sxn0)))
e20 = (yn0-((a20*xn0)+b20)).^2;sei20 = sum(e20);
deltaa20=sqrt((sei20)/(Nn0-2))*sqrt((Nn0)/(((Nn0)*(sxn0xn0))-((sxn0)*(sxn0))))
deltab20=sqrt((sei20)/(Nn0-2))*sqrt((sxn0xn0)/(((Nn0)*(sxn0xn0))-((sxn0)*(sxn0))))
r20 = (((Nn0)*(sxn0yn0))-((sxn0)*(syn0)))/(sqrt(((Nn0)*(sxn0xn0))-((sxn0)*(sxn0)))*sqrt(((Nn0)*(syn0yn0))-((syn0)*(syn0))))

%%%%%%%%%%%%%%%%%%%%%%%%%Se grafica con los respectivos ajustes y calculo punto interseccion con errores
Iv0 = (a0*b20-a20*b0)/(a0-a20);v0 = (b20-b0)/(a0-a20)
deltav0 = -v0*sqrt((deltab20^2)/((b0-b20)^2)+(deltab0^2)/((b0-b20)^2)+(deltaa0^2)/((a0-a20)^2)+(deltaa20^2)/((a0-a20)^2))
xx1 = -4:0.1:0;yy1 = a0.*xx1+b0;xx2 = -4:0.1:0;yy2 = a20.*xx2+b20;yf3= -10:0.01:Iv0; xf3= v0*ones(1,length(yf3));
figure(2);clf;
subplot(2,1,1);plot(x0,y0,'m.',xn0,yn0,'c.',xx1,yy1,'k-','linewidth',1.25,xx2,yy2,'r-'); axis([-4 0 -50 200]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('Datos Calculados pendiente 0','Datos Calculados pendiente diferente de 0','Ajuste de region con pendioente 0','Ajuste de region con pendioente diferente de 0','Location','northwest');title('Ajustes correspondientes a las dos regiones de la pendiente')
subplot(2,1,2);plot(x0,y0,'m.',xn0,yn0,'c.',xx1,yy1,'k-',xx2,yy2,'r-',xf3,yf3,'g'); axis([-2.2 -1.2 -10 10]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('','','','','V_{0}','Location','southeast');title('Zoom de los ajustes y punto de interseccion')