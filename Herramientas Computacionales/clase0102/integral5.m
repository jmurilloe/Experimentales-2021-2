clear all; close all;tic
a = -4.0; b = 4.0; n = 100; h = (b-a)/(2*n); x = a:h:b; 
f = @(x) exp(-x.^2); %\int(3*t^2*exp(t^3))dt = exp(t^3)
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
format long
AreaSimpson^2
error = 100*(abs(pi - AreaSimpson^2))/pi
toc