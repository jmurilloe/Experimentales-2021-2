clear all; close all;
g = 9.81;
v0 = 5;
t = 0:0.01:1.5;
y = v0*t - 0.5*g*t.^2;
i = 1;

%alturamax = y(1);
while y(i) >= 0 
  i = i + 1
end

fprintf('El tiempo empleado es: %f seg \n',t(i))
fprintf('El tiempo empleado producto de la expresion es: %f seg \n',2*v0/g)
t1 = 0:0.01:t(i);
y1 = v0*t1 - 0.5*g*t1.^2;
plot(t,y,'b',t1,y1,'r');grid on;