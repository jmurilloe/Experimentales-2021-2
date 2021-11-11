clear all; close all; 
x = -5:0.25:5;
y = x;
[X Y] = meshgrid(x,y);
Ex1 = (X+2)./(((X+2).^2) + ((Y+2).^2));
Ey1 = (Y+2)./(((X+2).^2) + ((Y+2).^2));
%%%%%%%%%%%%%%%%%%%%%%%%%%
Ex2 = -(X-2)./(((X-2).^2) + ((Y-2).^2));
Ey2 = -(Y-2)./(((X-2).^2) + ((Y-2).^2));
%%%%%%%%%%%%%%%%%%%%%%%%%%
ExT = Ex1 + Ex2;
EyT = Ey1 + Ey2;
ET = sqrt(ExT.^2 + EyT.^2);
ExTn = ExT./ET;
EyTn = EyT./ET;
%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
quiver(X,Y,ExTn,EyTn); grid on
title('Campo electrico de un dipolo')
xlabel('X'); ylabel('Y')
print -djpeg -r100 grafica_dipolo.jpg