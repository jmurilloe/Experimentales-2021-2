clear all; close all;
D= 0.00005; nu=0.5; sigma= 0.05;
numx=101; dx=1/(numx-1); x=0:dx:1;
numt=7001; dt=1.0;
t(1) = 0; 
for j=1:numt
  t(j+1) = t(j)+dt;
end
[X,T]=meshgrid(x,t);
C=(exp(-((X-nu).^2)./((T.*(4*D)+2*sigma^2)))./(sqrt(pi*((T.*(4*D))+2*sigma^2))));
figure(1)
for j=1:10:5000;
  plot(x,C(j,:),'-r','Linewidth',2);
  axis([0 1 0 8]); grid on; xlabel('x'); ylabel('C(x,t)');
  grid on; drawnow
end
% en matlab para animar:
%VideoWriter('DiffusionPerfilDifFinitas.mp4','MPEG-4');
%open(vidfile);
%for j=1:numt
%   t(j+1)=t(j)+dt;
%    for i=2:numx-1
%        c(i,j+1) = c(i,j) + D*(dt/dx^2)*(c(i+1,j)-2*c(i,j)+c(i-1,j));                                                       %+2*(dt)*(D1*c(i,j));
%    end
%    plot(x,c(:,j),'-r','LineWidth',2); 
%    axis([0 1 0 8]); grid on; xlabel('x'); ylabel('C(x,t)');grid on;
%    F(j) = getframe(gcf); writeVideo(vidfile,F(j));drawnow;
%end
%close(vidfile);