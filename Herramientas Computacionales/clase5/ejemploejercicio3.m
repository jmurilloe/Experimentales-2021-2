clear all; close all;
x = 1:0.1:14;
y = 0:0.1:10;
[X,Y] = meshgrid(x,y)
Z = sin(X-1) + cos(Y+2);
%%%%%%%%%%%%%%%%%%%%%%%%%%% grafica
figure(1);clf;
surf(X,Y,Z)
%colormap(autumn)
colormap(summer)
%%%%%%%%%%%%%%%%%%%%%%%%%%% curvas de nivel
figure(2);clf;
contour(X,Y,Z)
%%%%%%%%%%%%%%%%%%%%%%%%%%% ambas graficas pero en una misma figura
figure(3);clf;
subplot(1,2,1)
surf(X,Y,Z)
subplot(1,2,2)
contour(X,Y,Z)