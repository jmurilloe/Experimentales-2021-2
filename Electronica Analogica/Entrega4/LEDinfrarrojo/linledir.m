clear all; close all;
V=[0	0.229	0.341	0.431	0.542	0.636	0.726	0.854	0.954	1.042	1.111	1.132	1.154	1.179	1.201	1.222	1.226	1.23	1.243	1.256	1.26	1.269	1.277	1.282	1.286	1.295	1.299];
I= [0	0	0	0	0	0	0	0	0	0	0.12	0.2665	0.414	0.6989	1.237	1.505	2.097	2.957	3.925	4.785	5.86	6.774	7.903	8.871	10.91	12.85	14.73];
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