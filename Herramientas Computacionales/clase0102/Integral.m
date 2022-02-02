clear all; close all; 
a = -2.0; b = 1.0; n = 10000; dt = (b-a)/n; 
v = @(t) 3*t^2*exp(t^3); %\int(3*t^2*exp(t^3))dt = exp(t^3)
num = 0.5*v(a) + 0.5*v(b);
for i = 1:(n-1)
  num = num + v(a + i*dt);
 end
num = dt*num;
%%%%%%%%%%%%%%%%%%%%%%
x = a:0.01:b;
y = 3*x.^2.*exp(x.^3); 
%plot(x,y,'b-','linewidth',2)
area(x,y,'FaceColor','blue')
F = @(t) exp(t^3);
Vexacto = F(b) - F(a);
format long
error = 100*(abs(Vexacto - num))/Vexacto