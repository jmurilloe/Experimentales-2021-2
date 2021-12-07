clear all; close all;
V=[0	0.05	0.111	0.223	0.336	0.562	0.835	2.3	2.48	2.59	2.66	2.68	2.7	2.73	2.76	2.78	2.83	2.87	2.9	2.93	2.97	3	3.03	3.07	3.1	3.16	3.22];
I=[0	0	0	0	0	0	0	0	0	0	0.12	0.2366	0.4516	0.6667	1.075	1.559	2.473	3.441	4.409	5.43	6.559	7.419	8.28	9.301	10.43	12.31	14.03];
x0=V(11:length(V)); x = log(x0)
y0=I(11:length(I)); y = log(y0) 

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