clear all; close all;
D1int = [21.8	22.7	22.7	23.6	24	24.5	24.65	26.35	26.8	27.2	28	27.55	30];
D1ext = [25.4	25.6	26	26.7	26.35	28.05	28	29.15	30	28.4	31.85	32.8	34.2];
D1 = (D1ext+D1int)/2;
D2int = [39.45	39.4	39.3	40.85	42.5	43.25	43	46.75	45.25	47.8	50.4	50.7	53.4];
D2ext = [45.25	43.45	47.5	46.2	45.95	46.9	48.4	48.75	50.65	51.55	53.2	55.2	58.2];
D2 = (D2ext+D2int)/2;
V = [5	4.8	4.6	4.4	4.2	4	3.8	3.6	3.4	3.2	3	2.8	2.6];
x = log(V); y = log(D1);
j = log(V); k = log(D2); 

%%%%%% Minimos cuadrados para anillo 1
N = length(x); sxy = sum(x.*y); sxx = sum(x.*x);
syy = sum(y.*y); sx = sum(x); sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2; sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

%%%%%% Minimos cuadrados para anillo 2
N2 = length(j); sjk = sum(j.*k); sjj = sum(j.*j);
skk = sum(k.*k); sj = sum(j); sk = sum(k);
a2 = (((N2)*(sjk))-((sj)*(sk)))/(((N2)*(sjj))-((sj)*(sj)))
b2 = (((sjj)*(sk))-((sj)*(sjk)))/(((N2)*(sjj))-((sj)*(sj)))
e2 = (k-((a2*j)+b2)).^2; sei2 = sum(e2);
iN2certidumbrea=sqrt((sei2)/(N2-2))*sqrt((N2)/(((N2)*(sjj))-((sj)*(sj))))
iN2certidumbreb=sqrt((sei2)/(N2-2))*sqrt((sjj)/(((N2)*(sjj))-((sj)*(sj))))
r2 = (((N2)*(sjk))-((sj)*(sk)))/(sqrt(((N2)*(sjj))-((sj)*(sj)))*sqrt(((N2)*(skk))-((sk)*(sk))))
%figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
%subplot(2,2,1)
%plot(x,y,'*b');grid on;
%xlabel('Temperatura(K)');ylabel('\lambda_{max}(\mum)');
%title('A')
%%%%% esto tiene que ir en la descripcion de la figura '\lambda_{max} vs temperatura para la radiacion de un cuerpo negro'
%%%%%%%%%%%%%%%%%%%%%%%%
%subplot(2,2,2)
%semilogy(x,y,'*b');grid on;
%xlabel('Temperatura(K)');ylabel('log(\lambda_{max}(\mum))');
%title('B')
%%%%%\ esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para $\lambda_{max}$'
%%%%%%%%%%%%%%%%%%%%%%%%
%subplot(2,2,3)
%semilogx(x,y,'*b');grid on;
%xlabel('log(Temperatura(K))');ylabel('\lambda_{max}(\mum)');
%title('C')
%%%%% esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para Temperatura'
%%%%%%%%%%%%%%%%%%%%%%%%
%subplot(2,2,4)
%loglog(x,y,'*b');grid on;
%xlabel('log(Temperatura(K))');ylabel('log(\lambda_{max}(\mum))');
%title('D')
%%%%% esto tiene que ir en la descripcion de la figura title('Con escala logaritmica en ambos ejes'
%figure(1); clf;
%plot(V,D1,'k*')
%figure(2); clf;
%plot(V,D2,'k*')