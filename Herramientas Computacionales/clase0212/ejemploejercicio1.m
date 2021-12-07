clear all; close all;
k = 0.7; x = -5:0.01:5;
[Sn,Cn,Dn] = ellipj(x,k);
figure(1); clf;
plot(x,Sn,'-b','linewidth',2,x,Cn,'-r','linewidth',2,x,Dn,'-k','linewidth',2)
legend('Sn','Cn','Dn','location','best'); grid on; title('Funciones Elipticas de Jacobi')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[K,X] = meshgrid(0:0.01:1,-5:0.01:5);
[SN,CN,DN] = ellipj(X,K);
figure(2); clf;
surf(X,K,SN); xlabel('x'); ylabel('k'); zlabel('SN'); title('Superficie Funcion Eliptica de Jacobi, SN')
figure(3); clf;
surf(X,K,CN); xlabel('x'); ylabel('k'); zlabel('SN'); title('Superficie Funcion Eliptica de Jacobi, CN')
figure(4); clf;
surf(X,K,DN); xlabel('x'); ylabel('k'); zlabel('SN'); title('Superficie Funcion Eliptica de Jacobi, DN')