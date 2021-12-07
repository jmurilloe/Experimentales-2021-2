clear all; close all;
V=[0	0.0468	0.111	0.204	0.336	0.562	0.835	1.11	0.17	1.47	1.58	1.64	1.68	1.7	1.73	1.76	1.78	1.79	1.81	1.86	1.87	1.89	1.9	1.91	1.92	1.93	1.95	1.97	1.98];
I=[0	0	0	0	0	0	0	0	0	0	0	0	0	0.09677	0.3065	0.4677	0.6344	0.7903	1.059	1.866	3.29	4.151	5.065	6.086	8.016	8.882	11.16	13.12	14.84];
x0=V(14:length(V)); x = log(x0)
y0=I(14:length(I)); y = log(y0) 

figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
subplot(2,2,1)
plot(V,I,'-b');grid on; xlabel('V_{D} [V]');ylabel('I [A]'); title('A')
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
semilogy(V,I,'-b');grid on; xlabel('V_{D} [V]');ylabel('log(I [A])'); title('B')
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
semilogx(V,I,'-b');grid on; xlabel('log(V_{D} [V])');ylabel('I [A]'); title('C')
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
loglog(V,I,'-b');grid on; xlabel('log(V_{D} [V])');ylabel('log(I [A])'); title('D')

%%%%%% Linealizacion escala log log con MC
N = size(x)(2)
format long

sxy = sum(x.*y); sxx = sum(x.*x); syy = sum(y.*y); sx = sum(x); sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2; sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))
xx = min(x):0.001:max(x); yy = a.*xx+b; 
figure(2); clf; plot(x,y,'*b', xx, yy,'k-')

%%%%%% Calculos eta e incertidumbre
K = 8.617333262e-5; q = 1; T = 300;
eta = (q)/(a*K*T)
deltaeta = (incertidumbrea*q)/(a^2*K*T)