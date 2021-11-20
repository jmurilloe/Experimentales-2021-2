clear all; close all;
Vr = [0	0	0	-0.01	-0.01	-0.02	-0.02	-0.03	-0.03	-0.04	-0.04	-0.06	-0.06	-0.06	-0.07	-0.07	-0.08	-0.08	-0.09	-0.09	-0.1	-0.1	-0.11	-0.12	-0.12	-0.13	-0.13	-0.14	-0.14	-0.15	-0.15	-0.16	-0.16	-0.17	-0.17	-0.18	-0.18	-0.18	-0.19	-0.19	-0.2	-0.2	-0.21	-0.21	-0.22	-0.22	-0.23	-0.23	-0.24	-0.24	-0.25	-0.25	-0.26	-0.26	-0.27	-0.28	-0.28	-0.29	-0.29	-0.29	-0.3	-0.3	-0.31	-0.31	-0.32	-0.32	-0.33	-0.33	-0.33	-0.34	-0.34	-0.35	-0.35	-0.36	-0.36	-0.37	-0.37	-0.38	-0.38	-0.39	-0.39	-0.39	-0.4	-0.41	-0.41	-0.41	-0.42	-0.43	-0.44	-0.45	-0.45	-0.45	-0.46	-0.46	-0.46	-0.47	-0.48	-0.48	-0.49	-0.49	-0.5	-0.5	-0.51	-0.52	-0.52	-0.53	-0.53	-0.54	-0.55	-0.55	-0.56	-0.57	-0.57	-0.58	-0.59	-0.59	-0.59	-0.6	-0.61	-0.61	-0.62	-0.62	-0.62	-0.63	-0.64	-0.64	-0.64	-0.65	-0.65	-0.66	-0.67	-0.67	-0.68	-0.69	-0.69	-0.7	-0.7	-0.7	-0.71	-0.72	-0.73	-0.73	-0.73	-0.74	-0.75	-0.75	-0.76	-0.77	-0.77	-0.78	-0.78	-0.79	-0.8	-0.81	-0.81	-0.82	-0.83	-0.84	-0.85	-0.86	-0.86	-0.87	-0.88	-0.88	-0.89	-0.9	-0.9	-0.91	-0.92	-0.93	-0.94	-0.95	-0.96	-0.96	-0.97	-0.99	-0.99	-1	-1.01	-1.02	-1.03	-1.03	-1.04	-1.05	-1.05	-1.06	-1.07	-1.08	-1.08	-1.09	-1.11	-1.11	-1.12	-1.13	-1.14	-1.14	-1.15	-1.16	-1.17	-1.17	-1.18	-1.19	-1.2	-1.2	-1.21	-1.22	-1.23	-1.24	-1.25	-1.26	-1.28	-1.28	-1.29	-1.3	-1.32	-1.33	-1.34	-1.35	-1.35	-1.37	-1.38	-1.39	-1.4	-1.4	-1.42	-1.42	-1.43	-1.44	-1.45	-1.46	-1.48	-1.49	-1.5	-1.5	-1.51	-1.53	-1.54	-1.55	-1.56	-1.57	-1.58	-1.58	-1.59	-1.59	-1.59	-1.59	-1.59	-1.6	-1.62	-1.63	-1.63	-1.65	-1.66	-1.67	-1.68	-1.7	-1.71	-1.72	-1.74	-1.75	-1.76	-1.77	-1.78	-1.8	-1.81	-1.82	-1.83	-1.84	-1.85	-1.86	-1.87	-1.88	-1.88	-1.89	-1.9	-1.91	-1.92	-1.93	-1.93	-1.94	-1.96	-1.96	-1.98	-1.98	-1.99	-1.99	-1.99	-2	-2.01	-2.03	-2.04	-2.05	-2.06	-2.07	-2.08	-2.09	-2.1	-2.11	-2.11	-2.13	-2.14	-2.15	-2.16	-2.17	-2.18	-2.19	-2.21	-2.21	-2.22	-2.23	-2.25	-2.26	-2.27	-2.29	-2.3	-2.3	-2.33	-2.33	-2.34	-2.35	-2.36	-2.37	-2.38	-2.38	-2.38	-2.39	-2.4	-2.41	-2.42	-2.43	-2.45	-2.46	-2.47	-2.49	-2.5	-2.51	-2.52	-2.53	-2.54	-2.55	-2.56	-2.57	-2.58	-2.58	-2.59	-2.61	-2.61	-2.62	-2.63	-2.64	-2.65	-2.66	-2.66	-2.68	-2.69	-2.7	-2.72	-2.73	-2.74	-2.75	-2.76	-2.77	-2.77	-2.78	-2.78	-2.79	-2.79	-2.8	-2.82	-2.82	-2.84	-2.85	-2.86	-2.86	-2.87	-2.89	-2.9	-2.9	-2.92	-2.94	-2.95	-2.96	-2.97	-2.99	-3	-3.01	-3.03	-3.04	-3.06	-3.06	-3.08	-3.1	-3.1	-3.13	-3.14	-3.15	-3.17	-3.17	-3.18	-3.2	-3.21	-3.21	-3.22	-3.24	-3.25	-3.26	-3.28	-3.29	-3.3	-3.31	-3.33	-3.33	-3.34	-3.36	-3.37	-3.37	-3.37	-3.4	-3.4	-3.41	-3.42	-3.43	-3.43	-3.44	-3.45	-3.46	-3.47	-3.48	-3.49	-3.5	-3.51	-3.52	-3.53	-3.55	-3.55	-3.57	-3.58	-3.58	-3.58	-3.6	-3.6	-3.61	-3.62	-3.64	-3.64	-3.65	-3.67	-3.68	-3.69	-3.7	-3.72	-3.73	-3.74	-3.75	-3.76	-3.76	-3.78	-3.8	-3.8	-3.82	-3.83	-3.83	-3.85	-3.86	-3.86	-3.88	-3.89	-3.9	-3.92	-3.93	-3.94	-3.96	-3.97	-3.97	-3.98	-3.98	-3.98	-3.99	-3.99];
I = [95.7	96.7	96.6	95.9	95.2	94.7	94.8	94.2	93.4	93	91.6	91.3	89.8	89.1	88.6	88.1	88.1	87.5	87	86.7	86.3	85.7	85	84.3	83.4	83	82.3	81.8	81	80.1	79.9	79.2	78.7	78	77.6	77	76.6	76.1	75.7	75.4	74.5	74.2	73.7	73.1	72.8	71.1	71.3	70.9	70.8	70.2	69.8	69.1	68.5	67.8	67.4	66.7	66.1	65.2	64.9	64.1	63.8	63.3	62.9	62.2	62	61.5	61.3	60.6	60	59.8	59.1	58.7	58.1	57.7	57.4	56.9	56.2	56	55.3	55	54.1	54	54.1	53.6	52.9	52.7	52	51.4	50.3	47.2	45.9	46.3	45.9	45.7	45.5	45.1	44.5	43.9	43.3	43.6	42.3	41.6	41.8	40.6	40.1	39.7	40.4	40.5	40.8	40.2	39.4	39.1	38.6	38	37.3	36.7	36.2	35.9	35.6	34.9	34.4	32.9	32.6	31.8	31.8	31	30.9	30.4	29.9	29.8	29.3	28.7	28.8	28.9	28.4	27.6	27.9	27.4	26.9	25.6	24.4	24.4	25.1	24.9	24.5	23.9	23.3	22.5	22.5	22.3	21.7	21.2	20.8	20.1	19.7	19.3	18.8	18.2	17.6	17	16.8	16.5	16.1	15.4	14.9	14.5	14.2	13.8	13.2	12.8	12.4	12	11.3	11	10.6	10	9.4	9.2	8.9	8.4	7.9	7.8	7.6	7	6.8	6.5	6.2	5.9	5.6	5.5	5.2	5	4.9	4.7	4.3	4.2	4	3.8	3.4	3.4	3.2	3.1	2.9	2.6	2.6	2.4	2.1	1.9	1.8	1.6	1.2	1.2	1	1	0.7	0.6	0.5	0.4	0.4	0.3	0.2	0	0.1	0	-0.1	-0.2	-0.1	-0.2	-0.3	-0.3	-0.3	-0.4	-0.4	-0.4	-0.4	-0.4	-0.5	-0.6	-0.5	-0.5	-0.6	-0.5	-0.5	-0.5	-0.5	-0.4	-0.5	-0.5	-0.7	-0.6	-0.6	-0.6	-0.6	-0.5	-0.6	-0.6	-0.7	-0.6	-0.7	-0.6	-0.7	-0.6	-0.6	-0.8	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.6	-0.7	-0.6	-0.7	-0.6	-0.7	-0.6	-0.7	-0.6	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.6	-0.9	-0.6	-0.7	-0.5	-1	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.6	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.8	-0.6	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.7	-0.7	-0.7	-0.7	-0.8	-0.7	-0.8	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.7	-0.8	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.6	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.9	-0.7	-0.8	-0.7	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.9	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.8	-0.7	-0.9	-0.7	-0.7	-0.8	-0.8	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.8	-0.7	-0.7	-0.8	-0.8	-0.7	-0.8	-0.8	-0.7	-0.8	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.7	-0.8	-0.8	-0.7	-0.9	-0.8	-0.7	-0.8	-0.8	-0.7	-0.8	-0.8	-0.7	-0.7	-0.8	-0.8	-0.8	-0.8	-0.7	-0.7	-0.9	-0.8	-0.7	-0.8	-0.7	-0.8	-0.9	-0.7	-0.8	-0.8	-0.8	-0.8	-0.7	-0.6	-0.7	-0.8	-0.6]; 
%%%%%%%%%%%%%%%%%%%%%%%%%%Se calcula la derivada como la diferencia entre las corrientes sobre la diferencia de voltajes. Como se usa el paso siguiente, el vector tendra un tamanho...
%%%%%%%%%%%%%%%%%%%%%%%%%%... N-1 del vector original. Se ajuste Vr de acuerdo a esa necesidad.
for i = 1:(length(I)-5)
  didv(i) = (I(i+5)-I(i))/(Vr(i+5)-Vr(i));
end
Vrdidv=Vr(1:length(didv));
volmax = -1.25; %%%%%%%%%%%%%%%%%%%% <----------------SELECCIONAR el valor de voltaje hasta el que se considera, inicialmente, que didv esta en 0
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
subplot(2,1,2);plot(x0,y0,'m.',xn0,yn0,'c.',xx1,yy1,'k-',xx2,yy2,'r-',xf3,yf3,'g'); axis([-1.8 -1.0 -10 10]);grid on;xlabel('V_{r}[V]');ylabel('I[A]');legend('','','','','V_{0}','Location','southeast');title('Zoom de los ajustes y punto de interseccion')