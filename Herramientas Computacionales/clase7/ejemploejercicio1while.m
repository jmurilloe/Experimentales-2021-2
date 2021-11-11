clear all; close all;

term = 1;
s = term;
n = 1;

while term > 1e-10
  n = n+1;
  term = 1/n^2;
  s = s + term;
  if(n>1000)
   display('Esto esta tardando mucho, me voy...')
  break
  end
end
fprintf('La suma es = %f  y el iterador es %i\n',s, n)