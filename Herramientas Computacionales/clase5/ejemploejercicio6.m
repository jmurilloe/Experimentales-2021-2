clear all; close all; 
x = -5:0.25:5;
y = x;
[X Y] = meshgrid(x,y);
Ex = X./(X.^2 + Y.^2);
Ey = Y./(X.^2 + Y.^2);
%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1);clf;
quiver(X,Y,Ex,Ey)
%%%%%%%%%%%%%%%%%%%%%%%%%%
Bx= -Y./(X.^2 + Y.^2);
By= X./(X.^2 + Y.^2);
figure(2);clf;
quiver(X,Y,Bx,By)
B= sqrt(Bx.^2 + By.^2);
Bxn = Bx./B;
Byn = By./B;
figure(3);clf;
quiver(X,Y,Bxn,Byn)
%%%%%%%%%%%%%%%%%%%%%%%%%% tarea: hacer un dipolo, mostrar grafica del campo electrico