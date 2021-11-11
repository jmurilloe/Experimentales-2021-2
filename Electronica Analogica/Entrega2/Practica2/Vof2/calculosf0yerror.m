clear all; close all; 
L = 30.2*10^(-3);
C = 10*10^(-9);
BW = 5.73*10^(3);
deltaL = 0.1*10^(-3);
deltaC = 0.1*10^(-9);
deltaBW = 0.14*10^(3);
LC = L*C;
parte1 = 1/(4*pi*LC);
parte2 = sqrt(((deltaL*C)^2+(deltaC*L)^2)/(LC));
errototf0 = parte1*parte2
f0 = (1)/(2*pi*sqrt(LC))
Rt = 1/(2*pi*(BW)*(C))
errototrt = (Rt)*sqrt((deltaBW/BW)^2+(deltaC/C)^2)