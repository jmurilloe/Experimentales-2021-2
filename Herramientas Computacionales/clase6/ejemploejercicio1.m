clear all; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%
x = 0:pi/30:3*pi;
y = cos(x);
y = y.*(y>0);
figure(1); clf;
plot(x,y); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
x2 = 0:0.01:6;
y2 = (2*x2).*(0<=x2 & x2 <1) + 2*(1<=x2 & x2<3) + (-x2 + 5).*(3<=x2 & x2 >5);
figure(2); clf;
plot(x2,y2);grid on; axis([-0.2 6 0 2.3]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x3 = -4*pi:pi/30:4*pi;
x3 = x3 + (x3==0)*eps;
y3 = sin(x3)./x3;
figure(3); clf; 
plot (x3,y3); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x4 = -4*pi:pi/30:4*pi;
y4  = tan(x4);
y4 = y4.*(abs(y4)<100);
figure(4); clf; 
plot (x4,y4); grid on;


