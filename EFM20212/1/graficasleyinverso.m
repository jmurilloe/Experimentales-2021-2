clear all; close all;
x = 4:1:27; 
y = [1.981818182 1.272727273 0.886363636 0.645454545 0.495454545 0.386363636 0.318181818 0.259090909 0.218181818 0.186363636 0.159090909 0.140909091 0.131818182 0.113636364 0.1 0.095454545 0.086363636 0.077272727 0.072727273 0.063636364 0.059090909 0.054545455 0.05 0.045454545]; 
figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
subplot(2,2,1)
plot(x,y,'*');grid on;
xlabel('Distancia, d[cm]');ylabel('Potencia, P [mW]');
axis([0 30 0 2.3])
title('A')
%%%%% esto tiene que ir en la descripcion de la figura '\lambda_{max} vs temperatura para la radiacion de un cuerpo negro'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
semilogy(x,y,'*');grid on;
xlabel('Distancia, d[cm]');ylabel('log(Potencia, P [mW])');
title('B')
%%%%%\ esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para \lambda_{max}'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
semilogx(x,y,'*');grid on;
xlabel('log(Distancia, d[cm])');ylabel('Potencia, P [mW]');
axis([1 100 0 2.3])
title('C')
%%%%% esto tiene que ir en la descripcion de la figura 'Con escala logaritmica para Temperatura'
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
loglog(x,y,'*');grid on;
xlabel('log(Distancia, d[cm])');ylabel('log(Potencia, P [mW])');
title('D')
%%%%% esto tiene que ir en la descripcion de la figura title('Con escala logaritmica en ambos ejes'
print -djpeg -r100 graficas_potenciavsdistancia.jpg