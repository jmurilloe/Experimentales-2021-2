clear all; close all; 
a(1) = 1;
N= 11;
x = 2.0181103;   

for i = 1:N
  a(i+1) = ((-1)^(i))*((x^(2*i))/(factorial(2*i)));
end
format long
sum(a)
funcion = cos(x);
funcion
% A partir del paso 11 ya no se distingue diferencia en el resultado, por lo...
% ...menos en los primeros 15 decimales, lo que en la mayoria de ocasiones es ...
% ...mas que suficiente.
