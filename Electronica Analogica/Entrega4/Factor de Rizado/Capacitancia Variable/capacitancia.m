clear all; close all;
RL = 1000; F = 60;
C = [0.47e-6 1e-6 4.7e-6 10e-6 20e-6 30e-6 40e-6 100e-6 200e-6 400e-6 1000e-6];
VR = [8.8 8.4 5.2 3.6 2.4 1.6 1.3 0.560 0.3 0.26 0.08];
DELTAVR = [0.28 0.28 0.28 0.28 0.28 0.28 0.2 0.08 0.04 0.04 0.02];
VP = [9.0 9.0 9.0 9.0 9.0 9.0 9.0 9.0 9.0 9.0 9.0];
DELTAVP = [0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 ];
VCD = VP.*(1-((1)./(2*pi*F*RL*C)));
DELTAVCD = DELTAVP.*(1-((1)./(2*pi*F*RL*C)));
FR = (VR./VCD)*100;

%%%%% Ajuste escala log mediante Minimos Cuadrados
xp = C(3:length(C)); yp = FR(3:length(FR)); x = log(xp); y = log(yp); N = length(x)
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
plot(C,FR,'*-k')

figure(2); clf;
plot(x,y,'k*',xx,yy,'-r')