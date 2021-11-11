function [cuadrado,cubo,cuatro] = potencias(x)
  try,
    cuadrado = x^2;
    cubo = x^3;
    cuatro = x^4;
  catch,
    beep;
    display('Inserte un numero');
   end_try_catch;
end;

