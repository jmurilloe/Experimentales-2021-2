clear all; close all;
x = 4:1:27;
y = [1.981818182 1.272727273 0.886363636 0.645454545 0.495454545 0.386363636 0.318181818 0.259090909 0.218181818 0.186363636 0.159090909 0.140909091 0.131818182 0.113636364 0.1 0.095454545 0.086363636 0.077272727 0.072727273 0.063636364 0.059090909 0.054545455 0.05 0.045454545];
size(x)
size(y)
N = size(x)(2)

format long

sxy = sum(x.*y);
sxx = sum(x.*x);
syy = sum(y.*y);
sx = sum(x);
sy = sum(y);
a = (((N)*(sxy))-((sx)*(sy)))/(((N)*(sxx))-((sx)*(sx)))
b = (((sxx)*(sy))-((sx)*(sxy)))/(((N)*(sxx))-((sx)*(sx)))
e = (y-((a*x)+b)).^2;
sei = sum(e);
incertidumbrea=sqrt((sei)/(N-2))*sqrt((N)/(((N)*(sxx))-((sx)*(sx))))
incertidumbreb=sqrt((sei)/(N-2))*sqrt((sxx)/(((N)*(sxx))-((sx)*(sx))))
r = (((N)*(sxy))-((sx)*(sy)))/(sqrt(((N)*(sxx))-((sx)*(sx)))*sqrt(((N)*(syy))-((sy)*(sy))))
