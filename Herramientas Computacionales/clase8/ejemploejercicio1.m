clear all; close all;
g = 9.81;
v0 = 5;
t = 0:0.01:1;
tmax = size(t,2)
y = v0*t - 0.5*g*t.^2;

alturamax = y(1);
for i = 2:tmax
  if y(i) > alturamax
    alturamax = y(i);
  end
end
fprintf('La altura maxima es: %f m \n',alturamax)
plot(t,y);grid on;