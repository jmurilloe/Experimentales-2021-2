clear all; close all;tic
D = 0.00005; nu = 0.5; sigma = 0.05;
nx = 101; dx = 1/(nx-1); x = 0:dx:1;
nt = 5000; dt = 1.0; t(1) = 0;
C = zeros(nx,nt);
C(1,1) = 0; C (1,nt) = 0;
for i = 2:nx-1
  C(i,1) = exp(-((x(i) - nu)^2)/(2*sigma^2))/sqrt(pi*2*sigma^2);
end
for j = 1:nt
  t(j+1) = t(j) + dt;
  for i = 2:nx-1
    C(i,j+1) = C(i,j) + D*(dt/dx^2)*(C(i+1,j) - 2*C(i,j) + C(i-1,j));
  end
end; toc
figure(1); clf;
plot(x,C(:,1),'-b','linewidth',2,x,C(:,100),'-r','linewidth',2,...
     x,C(:,400),'-g','linewidth',2,x,C(:,1000),'-k','linewidth',2,...
     x,C(:,5000),'-b','linewidth',2); grid on;
legend('C(t=1)','C(t=100)','C(t=400)','C(t=1000)','C(t=2500)','C(t=5000)');
ylabel('\Phi(x)'); xlabel('Posicion')
%Tarea poner 2 pulsos gaussianos uno al lado de otro
