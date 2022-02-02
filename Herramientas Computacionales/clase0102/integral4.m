clear all; close all; 
a = 0.0; b = 1.0; n = 10; h = (b-a)/(2*n); x = a:h:b; 
f = @(x) 3*x.^2.*exp(x.^3); %\int(3*t^2*exp(t^3))dt = exp(t^3)
y = f(x);
i = 0:2*n;
coeff = 3 + (-1).^(i+1);
coeff(1) = 1; coeff(end) = 1;
AreaSimpson = (h/3)*sum(coeff.*y)
##
y = 3*x.^2.*exp(x.^3);
%plot(x,y,'b-','linewidth',2)
figure(1); clf;
area(x,y,'FaceColor','blue')
F = @(t) exp(t^3);
Vexacto = F(b) - F(a);
format long
error = 100*(abs(Vexacto - AreaSimpson))/Vexacto