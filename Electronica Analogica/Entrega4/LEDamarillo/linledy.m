clear all; close all;
V=[0.09	0.133	0.426	0.648	0.81	1.12	1.3	1.51	1.71	1.8	1.87	1.91	1.93	1.95	1.97	1.98	1.99	2	2.01	2.01	2.02	2.03	2.04	2.04	2.03	2.05	2.07	2.08];
I=[0	0	0	0	0	0	0	0	0	0	0.03	0.2955	0.5589	0.774	0.989	1.365	1.795	2.441	3.14	4.054	5.021	5.882	6.849	7.871	9.107	10.02	12.92	14.58];
x0=V(12:length(V)); x = log(x0)
y0=I(12:length(I)); y = log(y0) 

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