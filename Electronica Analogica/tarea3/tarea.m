clear all; close all;
q = 1;t = 300; k = 8.617333262*10^(-5); 
v1 = 0:0.01:0.75; %2.5
v2 = 0:0.01:1.25; %3.1
fi = @ (io, eta) io*(exp((q*v1)/(eta*k*t))-1);
gi = @ (io, eta) io*(exp((q*v2)/(eta*k*t))-1);
%%%%%%%%%%%%%%%%%%%%%%% eta 1 (+ ideal)%%%%%%%%%%%%%%%%%%%%%%%
i1 = fi(2*10^(-9),1); 
i2 = fi(4*10^(-9),1);
i3 = fi(6*10^(-9),1);
i4 = fi(8*10^(-9),1);
i5 = fi(10*10^(-9),1);
figure (1); clf;
plot(v1,i1,'k',v1,i2,'m',v1,i3,'c',v1,i4,'r',v1,i5,'b')
xlabel('Voltaje [V]');ylabel('Corriente [A]');
legend('2nA','4nA','6nA','7nA','8nA','Location','northwest')
title('Ecuacion de Shockley con \eta=1 y T = 300K')
axis([0 1.4 0 40000])
print -djpeg -r100 grafica_eta1.jpg
%%%%%%%%%%%%%%%%%%%%%%% eta 2 (- ideal)%%%%%%%%%%%%%%%%%%%%%%%
i6 = gi(2*10^(-9),2);
i7 = gi(4*10^(-9),2);
i8 = gi(6*10^(-9),2);
i9 = gi(8*10^(-9),2);
i10 = gi(10*10^(-9),2);
figure (2); clf;
plot(v2,i6,'k',v2,i7,'m',v2,i8,'c',v2,i9,'r',v2,i10,'b')
xlabel('Voltaje [V]');ylabel('Corriente [A]');
legend('2nA','4nA','6nA','7nA','8nA','Location','northwest')
title('Ecuacion de Shockley con \eta=2 y T = 300K')
print -djpeg -r100 grafica_eta2.jpg
vt = k*t/q %voltaje termico