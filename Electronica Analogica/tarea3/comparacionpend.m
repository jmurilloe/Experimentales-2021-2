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
%%%%%%%%%%%%%%%%%%%%%%%%%%%
eta2 = 2;
v62 = 0:0.01:1.4;
i62 = 2*10^(-9)*(exp((q*v62)/(eta2*t*k))-1);
v72 = 0:0.01:1.37;
i72 = 4*10^(-9)*(exp((q*v72)/(eta2*t*k))-1);
v82 = 0:0.01:1.35;
i82 = 6*10^(-9)*(exp((q*v82)/(eta2*t*k))-1);
v92 = 0:0.01:1.34;
i92 = 8*10^(-9)*(exp((q*v92)/(eta2*t*k))-1);
v102 = 0:0.01:1.335;
i102 = 10*10^(-9)*(exp((q*v102)/(eta2*t*k))-1);
x= 0:0.1:1.4;
y= 1000*ones(1,15);
figure (1); clf;
plot(v6,i6,'k',v7,i7,'m',v8,i8,'c',v9,i9,'r',v10,i10,'b',v62,i62,'k',v72,i72,'m',v82,i82,'c',v92,i92,'r',v102,i102,'b',x,y,'y')
legend('2nA','4nA','6nA','8nA','10nA','Location','northwest')
xlabel('Voltaje [V]');ylabel('Corriente [A]');
title('Comparacion con T = 300K')
axis([0 1.5 0 2000])
text (0.4, 500, strcat ('\fontsize{15} \eta=1\rightarrow'));
text (1, 500, strcat ('\fontsize{15} \eta=2\rightarrow'));
print -djpeg -r100 grafica_pendientecomp.jpg