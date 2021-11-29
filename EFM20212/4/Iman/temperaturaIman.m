clear all; close all;
x = 1:0.01:100; 
R = 8.31446261815324; T = 185; % constante de los gases ideales R y temperatura promedio
c = 8.7532e-04; % <---------- SELECCIONAR calor especifico molar 
y =3*R*(x.^2).*((exp(x))./((exp(x)-1).^2)) - c;
plot (x,y);
i = 1; n = 1; mj0(1) = 0; mn0(1) = 0;
while (y(i)>0)
  mj0(i) = x(i);
  i = i+1;
end
x(i-1)
y(i-1)
x(i)
y(i)
precision = 0.5*(y(i-1) - y(i))
xmed = 0.5*(x(i)+x(i-1))
TE = (0.5*(x(i)+x(i-1)))*T  
deltaTE = (xmed - x(i-1))*T