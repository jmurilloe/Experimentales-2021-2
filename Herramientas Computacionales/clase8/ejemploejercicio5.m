clear all; close all;
g = 9.81; c = 0.21; m = 2;
t = 0:0.1:50;
v1 = m*g/c*(1 - exp(-(c/m)*t));
v2 = sqrt(m*g/c)*tanh(sqrt(c*g/m)*t);
plot (t,v1,'b-',t,v2,'r-');grid on;