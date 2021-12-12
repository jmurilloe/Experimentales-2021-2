clear all; close all;
y1 = 27.0; y2 = 29.5; y3 = 33.0; y4 = 37.5; y5 = 39.5; deltay = 0.5;
D = 131; d = 2e-6; m = 1;
theta1 = atan(y1/D)
deltatheta1 = deltay*(1/(D+y1))
theta2 = atan(y2/D)
deltatheta2 = deltay*(1/(D+y2))
theta3 = atan(y3/D)
deltatheta3 = deltay*(1/(D+y3))
theta4 = atan(y4/D)
deltatheta4 = deltay*(1/(D+y4))
theta5 = atan(y5/D)
deltatheta5 = deltay*(1/(D+y5))
lambda1 = d*sin(theta1)/m
deltalambda1 = deltatheta1*(d/m)*cos(theta1)
lambda2 = d*sin(theta2)/m
deltalambda2 = deltatheta2*(d/m)*cos(theta2)
lambda3 = d*sin(theta3)/m
deltalambda3 = deltatheta3*(d/m)*cos(theta3)
lambda4 = d*sin(theta4)/m
deltalambda4 = deltatheta4*(d/m)*cos(theta4)
lambda5 = d*sin(theta5)/m
deltalambda5 = deltatheta5*(d/m)*cos(theta5)