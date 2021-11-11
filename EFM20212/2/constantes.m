clear all; close all;
format long
hc = 1.98644586;
k = 1.380649;
hck = (hc/k);
lambda = 450;
T1 = 2.692;
lambdat1 = (1/(lambda*T1));
teorico = exp(hck*lambdat1*10^(4)) - 1
aproximacion = exp(hck*lambdat1*10^(4))
relativoporcentual = ((aproximacion-teorico)/(teorico))*100