clear all; close all;
y1 = 9.5; y2 = 19.5; y3 = 32.5; deltay = 0.5;
D = 52; d = 3.333333e-6; m1 = 1; m2 = 2; m3 = 3;
theta1 = atan(y1/D)
deltatheta1 = deltay*(1/(D+y1))
theta2 = atan(y2/D)
deltatheta2 = deltay*(1/(D+y2))
theta3 = atan(y3/D)
deltatheta3 = deltay*(1/(D+y3))

lambda1 = d*sin(theta1)/m1
deltalambda1 = deltatheta1*(d/m1)*cos(theta1)
lambda2 = d*sin(theta2)/m2
deltalambda2 = deltatheta2*(d/m2)*cos(theta2)
lambda3 = d*sin(theta3)/m3
deltalambda3 = deltatheta3*(d/m3)*cos(theta3)