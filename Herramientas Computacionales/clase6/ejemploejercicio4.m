clear all; close all; 
a(1) = 1; % colocamos la primera entrada de a =1
N= 19;

for i = 1:N % El numero de veces que se repite el ciclo
  a(i+1) = (i^2 +2*i  -1)/(i^2 +2*i+1)*a(1);
end

disp(sum(a))
dim_a = size(a)
%%%%%%%%%%%%%%%%%% tarea hacer pi o logaritmo como una sumatoria o en general cualquier funcion en serie de taylor trascendente?
