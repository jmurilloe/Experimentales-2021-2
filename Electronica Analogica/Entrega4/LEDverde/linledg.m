clear all; close all;
V=[0	0.106	0.421	0.626	0.91	1.12	1.46	1.91	2.04	2.13	2.19	2.22	2.26	2.29	2.31	2.34	2.36	2.36	2.38	2.4	2.42	2.46	2.48	2.47	2.5	2.53	2.54	2.54	2.61	2.6	2.63];
I=[0	0	0	0	0	0	0	0	0	0	0.2319	0.277	0.4989	0.784	1.075	1.398	1.828	2.151	2.634	3.602	4.677	5.699	6.398	7.527	8.656	9.462	10.48	11.34	12.63	14.14	14.95];
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