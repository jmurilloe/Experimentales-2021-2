clear all; close all;
x = 200:200:11000; 
y = [14.489 7.244 4.83 3.622 2.898 2.415 2.07 1.811 1.61 1.449 1.317 1.207 1.115 1.035 0.966 0.906 0.852 0.805 0.763 0.724 0.69 0.659 0.63 0.604 0.58 0.557 0.537 0.517 0.5 0.483 0.467 0.453 0.439 0.426 0.414 0.402 0.392 0.381 0.372 0.362 0.353 0.345 0.337 0.329 0.322 0.315 0.308 0.302 0.296 0.29 0.284 0.279 0.273 0.268 0.263]; 

xx = 200:10:11000;
yy = (exp(7.97231))./(xx.^1.00007);

hold on;

plot(x,y,'*')
plot(xx,yy,'-bk')
legend('Datos Simulador','Ajuste - MMC') 
xlabel('Temperatura(K)');ylabel('\lambda_{max}(\mum)');
title('Ajuste por minimos cuadrados')
text (750, 6, strcat ('\fontsize{16}\leftarrow \lambda_{max}  = e^{7.97231\pm0.00084}/T^{1.00007\pm0.00010}'));
%x_err= 0.05;
%y_err= 0.0032;
%errorbar(x, y, x_err, ">", x, y, y_err, "~");
hold off;
print -djpeg -r100 grafica_ajuste_lambdamax.jpg