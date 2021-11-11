clear all; close all; 
format long 
L = 0.12*10^(-3);
C = 47*10^(-9);
BW = 28.81*10^(3);
deltaL = 0.02*10^(-3);
deltaC = 0.1*10^(-9);
deltaBW = 0.14*10^(3);
LC = L*C;
a = 1/(4*pi*LC)
b = sqrt(((deltaL*C)^2+(deltaC*L)^2)/(LC))
errototf0 = a*b
f0 = (1)/(2*pi*sqrt(LC))
Rt = 1/(2*pi*(28.81*10^(3))*(47*10^(-9)))
errototrt = (Rt)*sqrt((deltaBW/BW)^2+(deltaC/C)^2)