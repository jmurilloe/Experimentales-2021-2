clear all; close all; 
e = 1; c = 299792458;
%%%%% Infrarrojo
voir = 1.190;deltavoir = 0.005;
lambdair = 930e-9 ;deltalambdair = 60e-9;
hir = (e/c)*voir*lambdair
deltahir = hir*sqrt((deltavoir/voir)^2+(deltalambdair/lambdair)^2)

%%%%% Rojo
vor = 1.850;deltavor = 0.005;
lambdar = 630e-9;deltalambdar = 40e-9;
hr = (e/c)*vor*lambdar
deltahr = hr*sqrt((deltavor/vor)^2+(deltalambdar/lambdar)^2)

%%%%% Amarillo
voa = 1.96;deltavoa = 0.03;
lambdaa = 580e-9;deltalambdaa = 40e-9;
ha = (e/c)*voa*lambdaa
deltaha = ha*sqrt((deltavoa/voa)^2+(deltalambdaa/lambdaa)^2)

%%%%% Verde
vov = 2.02;deltavov = 0.03;
lambdav = 560e-9;deltalambdav = 90e-9;
hv = (e/c)*vov*lambdav
deltahv = hv*sqrt((deltavov/vov)^2+(deltalambdav/lambdav)^2)

%%%%% Azul
voaz = 2.81;deltavoaz = 0.03;
lambdaaz = 450e-9;deltalambdaaz = 40e-9;
haz = (e/c)*voaz*lambdaaz
deltahaz = haz*sqrt((deltavoaz/voaz)^2+(deltalambdaaz/lambdaaz)^2)

errorir = ((4.1-3.7)/(4.1))*100 %((real-obtenido)/(real))*100
errorr = ((4.1-3.9)/(4.1))*100
errora = ((4.1-3.8)/(4.1))*100
errorv = ((4.1-3.8)/(4.1))*100
erroraz = ((4.2-4.1)/(4.1))*100 