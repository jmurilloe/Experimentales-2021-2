clear all; close all; tic
Nx = 800; Nt = 3700; L = 100; v = 20; S = 1;
Bandera = 1;
% Gaussiana
A = 1; s = 20; np = Nx/4; u = zeros(Nx,Nt);
hx = L/Nx; ht = S*hx/v;
S2 = S^2; S12 = (S/4)^2;
x = linspace(0,L,Nx); t = linspace(0,ht*Nt,Nt);

if Bandera == 1
  for nx = 2:Nx-1
    u(nx,1) = A.*exp(-0.5.*((nx-np)./s).^2);
  end
  
  for nx = 2:Nx-1
    u(nx,2) = A.*exp(-0.5.*((nx-np-1)./s).^2);
  end
end

if Bandera == 2
    u(10:30,1) = 0.5;
    u(11:31,2) = 0.5;
end

for nt = 2:Nt-1
  for nx = 2:Nx-1
    if nx > Nx/2
      S2 = (S/4)^2;
    else S2 = (S/1)^2;
  end
  u(nx,nt+1) = 2*u(nx,nt) - u(nx,nt-1)+...
               S2*(u(nx+1,nt) - 2*u(nx,nt)+ u(nx-1,nt));
  end
  u(1,nt+1) = 0; % Extremo Fijo
  %u(Nx,nt+1) = 0; % Extremo Fijo
  u(Nx,nt+1) = u(Nx-1,nt+1); % Extremo Libre
end

for j = 1:2:Nt
  plot(x,u(:,j),'linewidth',2); grid on; axis([min(x) max(x) -2 2]);
  xlabel('X','fontsize',13); ylabel('Onda','fontsize',13);
  titlestring = ['Iteracion = ', num2str(j),'Tiempo = ', num2str(t(j)),'Tiempo = ', num2str(t(j)), 'segundos'];
  title(titlestring,'fontsize',12);drawnow
end 
toc