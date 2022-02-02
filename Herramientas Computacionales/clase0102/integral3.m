clear all; close all; 
kB = 1.38e-23; %Constante de Boltzmann
m = 1.67e-27;
T = 350;
N = 4000;
Vmin = 0;
Vmax = 10000;
dv = (Vmax-Vmin)/N;
v = linspace(Vmin,Vmax,N);
fv = @(v) 4*pi*(m/(2*pi*kB*T))^(1.5)*v.^2.*exp(-m*v.^2/(2*pi*kB*T));
num = 0.5*fv(Vmin) + 0.5*fv(Vmax);
for i = 1:(N-1)
  num = num + fv(Vmin + i*dv);
 end
num = dv*num;
%%%%%%%%%%%%%%%%%%%%%%
v1 = linspace(Vmin,Vmax,N);
fv1 = 4*pi*(m/(2*pi*kB*T))^(1.5)*v1.^2.*exp(-m*v1.^2/(2*pi*kB*T));
%plot(x,y,'b-','linewidth',2)
area(v1,fv1,'FaceColor','blue')