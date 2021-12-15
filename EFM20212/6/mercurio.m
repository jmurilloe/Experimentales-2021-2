clear all; close all;
format long
y1 = 25.0; y2 = 27.0; y3 = 30.5; y4 = 34.5; y5 = 36.5; deltay = 0.5;
D = 121; d = 2e-6; m = 1; q = 2;
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
for i = 3:7
  x(i-2) = (1/q^2)-(1/i^2);
end
y = [1/lambda5 1/lambda4 1/lambda3 1/lambda2 1/lambda1]
N = length(x); sxy = sum(x.*y); sxx = sum(x.*x); syy = sum(y.*y); sx = sum(x); sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2; sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))
xx = min(x):0.01:max(x); yy = a*xx+b;
plot(x,y,'k*',xx,yy,'r-'); legend('Datos Experimentales','Ajuste lineal por MC', 'Location','southeast')
xlabel('(1/2)^2-(1/p)^2');ylabel('1/\lambda[x 10^{6} m^{-1}]'); title('Ajuste para tubo de descarga con Mercurio')