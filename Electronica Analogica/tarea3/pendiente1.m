clear all; close all;
q = 1; k = 8.617333262*10^(-5); eta = 1; t = 300;
v6 = 0:0.01:0.7;
i6 = 2*10^(-9)*(exp((q*v6)/(eta*t*k))-1);
v7 = 0:0.01:0.69;
i7 = 4*10^(-9)*(exp((q*v7)/(eta*t*k))-1);
v8 = 0:0.01:0.677;
i8 = 6*10^(-9)*(exp((q*v8)/(eta*t*k))-1);
v9 = 0:0.01:0.67;
i9 = 8*10^(-9)*(exp((q*v9)/(eta*t*k))-1);
v10 = 0:0.01:0.6677;
i10 = 10*10^(-9)*(exp((q*v10)/(eta*t*k))-1);
x= 0:0.1:0.7;
y= 1000*ones(1,8);
figure (1); clf;
plot(v6,i6,'k',v7,i7,'m',v8,i8,'c',v9,i9,'r',v10,i10,'b',x,y,'y')
xlabel('Voltaje [V]');ylabel('Corriente [A]');
legend('2nA','4nA','6nA','8nA','10nA','Location','northwest')
title('Ecuacion de Shockley con \eta = 2 y T = 300K')
print -djpeg -r100 grafica_pendiente1.jpg