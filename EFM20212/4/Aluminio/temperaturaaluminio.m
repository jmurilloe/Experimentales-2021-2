clear all; close all;
x = 0:0.001:20; 
R = 8.31446261815324; T = 185; % constante de los gases ideales R y temperatura promedio
c = 18.4; % <---------- SELECCIONAR calor especifico molar 
y =3*R*(x.^2).*((exp(x))./((exp(x)-1).^2)) - c;
plot (x,y); plot (x,y); xlabel('T_{E}/T'); ylabel('Diferencia entre la curva de Einstein y C'); legend('Curva Teorica'); title('Diferencia entre la curva de Einstein y C para la muestra de Al')
print -djpeg -r100 temperaturamuestraaluminio.jpg
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