clear all; close all;
x = [1 2 3 4 5 6 7 8 9 8 7 6 5 4 3 2 1]
clasedeplot = 'plot';

switch clasedeplot
  case 'bar'
    bar(x); title('Bar', 'fontsize', 20)
   case 'pie'
    pie(x); title('Pie', 'fontsize', 20)
   case 'pie3'
    pie3(x); title('Pie 3d', 'fontsize', 20)
   case 'plot'
    plot(x); title('Plot normal', 'fontsize', 20)
   case 'loglog' 
    loglog(x); title('Plot ejes Logaritmos', 'fontsize', 20)
   otherwise
    warning('tipo de plot no esperado')
end