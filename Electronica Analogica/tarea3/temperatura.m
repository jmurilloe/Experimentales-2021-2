clear all; close all;
q = 1; k = 8.617333262*10^(-5); eta = 2; io = 2*10^(-9);
v6 = 0:0.01:1.4;
i6 = io*(exp((q*v6)/(eta*300*k))-1);
v7 = 0:0.01:2.8;
i7 = io*(exp((q*v7)/(eta*600*k))-1);
v8 = 0:0.01:4.2;
i8 = io*(exp((q*v8)/(eta*900*k))-1);
v9 = 0:0.01:5.6;
i9 = io*(exp((q*v9)/(eta*1200*k))-1);
v10 = 0:0.01:7.0;
i10 = io*(exp((q*v10)/(eta*1500*k))-1);
% Cada 1.4!!!
figure (1); clf;
plot(v6,i6,'k',v7,i7,'m',v8,i8,'c',v9,i9,'r',v10,i10,'b')
xlabel('Voltaje [V]');ylabel('Corriente [A]');
legend('200K','250K','300K','350K','400K','Location','northwest')
title('Ecuacion de Shockley con \eta = 2 e I_{0} = 2nA')
axis([0 8 0 1200])
print -djpeg -r100 grafica_temp.jpg