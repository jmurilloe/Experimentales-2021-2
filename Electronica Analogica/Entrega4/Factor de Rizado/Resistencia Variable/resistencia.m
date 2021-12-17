clear all; close all;
%%%%% Calculos para factor de rizado en funcion de la resistencia
C = 100e-6; F = 60;
RL = [50 100 200 300 500 800 1000 2000 3000 5000 10000];
VR = [4.6 3.2 2 1.5 1.0 0.68 0.56 0.3 0.22 0.14 0.09];
DELTAVR = [0.28 0.28 0.28 0.2 0.2 0.08 0.08 0.04 0.04 0.02 0.02];
VP = [8.6 8.6 8.6 8.6 8.8 8.8 8.8 8.8 8.8 8.8 8.8 ];
DELTAVP = [0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 ];
VCD = VP.*(1-((1)./(2*pi*F*RL*C)));
DELTAVCD = DELTAVP.*(1-((1)./(2*pi*F*RL*C)));
FR = (VR./VCD)*100;

%%%%% Ajuste escala log mediante Minimos Cuadrados
x = log(RL); y = log(FR); N = length(x)
sxy = sum(x.*y); sxx = sum(x.*x); syy = sum(y.*y); sx = sum(x); sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2; sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))

%%%%% recta ajuste
xx = min(x):0.01:max(x); yy = a*xx+b;

%%%%% FIGURAS. 1. Interpolacion datos experimentales. 2. Ajuste lineal en escala log
figure(1); clf;
plot(RL,FR,'*k')

figure(2); clf;
plot(x,y,'k*',xx,yy,'-r')