clear all; close all;
x = -4:0.25:4;
y = x;
[X,Y] = meshgrid(x,y);
dY = X.^2./(1-Y.^2);
dX = ones(size(dY));
L = sqrt(1 + dY.^2);
%%%%%%%%%%%%%%%%%%%% herramienta para campos vectoriales
quiver(X,Y,dX./L,dY./L, 0.5)
hold on;
contour (X,Y,X.^3 -3*Y + Y.^3, -4:1:4,'r')
hold off;
grid on
axis([-4 4 -4 4])
title ('Campo Vectorial')
