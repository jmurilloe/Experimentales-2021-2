clear all; close all; 
x = [0:0.25*pi*pi]'; % no entendi esto
y = x;
z = sin(x)*cos(y');
xn = [0:0.01:1]'*pi
yn = [0:0.01:1]'*pi
[Xn, Yn] = meshgrid(xn,yn);
Zn= interp2(x,y,z,Xn,Yn, 'spline');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (1); clf; %Grafica data gruesa
surf(x,y,z)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (2); clf; %Grafica data fina e interpolada
surf(Xn,Yn,Zn)