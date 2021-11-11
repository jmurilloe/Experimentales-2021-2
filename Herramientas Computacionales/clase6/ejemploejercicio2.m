clear all; close all; 

x = input('Ingresar un numero para calcular un logaritmo: ');
if x>0
  y = log(x);
  fprintf('\n El logaritmo de %f es %f.\n', x, y);
  disp(sprintf('log(x)= %0.6f', y)) 
else
  beep
  disp('El argumento de Log(x) deber ser positivo')
end