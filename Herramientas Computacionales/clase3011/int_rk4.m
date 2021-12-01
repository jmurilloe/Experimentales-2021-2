function [tout, xout] = int_rk4(dt,dx,t,x)
tout = t + dt;
k1  = dx(t, x);              
k2 = dx(t + dt/2, x + (dt/2)*k1); 
k3 = dx(t + (dt/2),x + (dt/2)*k2);    
k4 = dt*dx(tout,x + dt*k3);
xout = x + dt*(k1 + 2*k2 + 2*k3 + k4)/6;
end