clear all; close all;
x = 200:200:11000; 
y = [14.489 7.244 4.83 3.622 2.898 2.415 2.07 1.811 1.61 1.449 1.317 1.207 1.115 1.035 0.966 0.906 0.852 0.805 0.763 0.724 0.69 0.659 0.63 0.604 0.58 0.557 0.537 0.517 0.5 0.483 0.467 0.453 0.439 0.426 0.414 0.402 0.392 0.381 0.372 0.362 0.353 0.345 0.337 0.329 0.322 0.315 0.308 0.302 0.296 0.29 0.284 0.279 0.273 0.268 0.263]; 
figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
subplot(2,2,1)
plot(x,y,'-b');grid on;
xlabel('Temperatura(K)');ylabel('\lambda_{max}(\mum)');
title('A')
%%%%% esto tiene que ir en la descripcion de la figura '\lambda_{max} vs temperatura para la radiacion de un cuerpo negro'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
semilogy(x,y,'-b');grid on;
xlabel('Temperatura(K)');ylabel('log(\lambda_{max}(\mum))');
title('B')
%%%%%\ esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para $\lambda_{max}$'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
semilogx(x,y,'-b');grid on;
xlabel('log(Temperatura(K))');ylabel('\lambda_{max}(\mum)');
title('C')
%%%%% esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para Temperatura'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
loglog(x,y,'-b');grid on;
xlabel('log(Temperatura(K))');ylabel('log(\lambda_{max}(\mum))');
title('D')
%%%%% esto tiene que ir en la descripcion de la figura title('Con escala logaritmica en ambos ejes'
print -djpeg -r100 graficas_lambda_max.jpg