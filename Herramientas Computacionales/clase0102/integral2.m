clear all; close all; 
a = -4.0; b = 4.0; n = 10000; dt = (b-a)/n; 
v = @(t) exp(-t^2); %\int(3*t^2*exp(t^3))dt = exp(t^3)
num = 0.5*v(a) + 0.5*v(b);
for i = 1:(n-1)
  num = num + v(a + i*dt);
 end
num = dt*num;
%%%%%%%%%%%%%%%%%%%%%%
x = a:0.01:b;
y = exp(-x.^2); 
%plot(x,y,'b-','linewidth',2)
area(x,y,'FaceColor','blue')
num*num
error = 100*(abs(pi - num))/pi