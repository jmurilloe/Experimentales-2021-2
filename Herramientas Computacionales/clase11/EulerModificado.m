function [x,y] = EulerModificado(f,xi,xf,yi,N)
    h = (xf-xi)/N;
    % se inician los vectores con ceros
    x = [xi, zeros(1,N)];
    y = [yi, zeros(1,N)];
    for i = 1:N
        x(i+1) = x(i) + h;
        ynew = y(i) + h*f(x(i),y(i));
        y(i+1) = y(i) + (h/2)*(f(x(i),y(i))+f(x(i+1),ynew));
    end
end