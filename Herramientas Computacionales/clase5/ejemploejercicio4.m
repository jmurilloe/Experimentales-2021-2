clear all; close all;
x = -8:0.01:10;
y = 0:0.1:1;
[X,Y] = meshgrid(x,y)
Z = sech(X+Y).^2 + sech(X + 20*Y - 5).^2;
%%%%%%%%%%%%%%%%%%%%%%%%%%% grafica
figure(1);clf;
surf(X,Y,Z)
%colormap(autumn)
colormap(summer)
shading interp;
colormap(summer)
az = 30; el = 45;
view(az,el) 
%view hace que la grafica se vea desde un punto especifico
