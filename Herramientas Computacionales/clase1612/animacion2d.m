clear all; close all;
numx = 41; numy = numx; numt = 100; dx = 1/(numx-1); dy = dx; dt = 0.0001;
x = 0:dx:1; y = 0:dy:1; C = zeros(numx,numy,numt); t(1)= 0; 
mu1 = 0.5; mu2 = 0.7; mu3 = 0.3; sigma = 0.02; D = 0.1;
C(1:numx-1,numy,1) = 0; % Top
C(1:numx-1,1,1) = 0;    % Bottom
C(numx,1:numy-1,1) = 2; % Right
C(1,1:numy-1,1) = 2;    % Left
for i = 2:numx-1
  for j = 2:numy-1
    C(i,j,1) = exp(-(x(i)-mu1)^2/(2*sigma^2)-(y(j)-mu1)^2/(2*sigma^2))/sqrt(2*pi*sigma^2)+...
               exp(-(x(i)-mu2)^2/(2*sigma^2)-(y(j)-mu2)^2/(2*sigma^2))/sqrt(2*pi*sigma^2)+...
               exp(-(x(i)-mu3)^2/(2*sigma^2)-(y(j)-mu3)^2/(2*sigma^2))/sqrt(2*pi*sigma^2);...
  end
end
[X,Y] = meshgrid(x,y);
%figure(1); clf; meshc(X,Y,C(:,:,1))
for j=1:numt
  t(j+1) = t(j)+ dt;
  for i= 2:numx-1
    for k= 2:numy-1  
      C(i,k,j+1) = C(i,k,j) + D*(dt/dx^2)*(C(i+1,k,j)-2*C(i,k,j)+C(i-1,k,j))+...
                            + D*(dt/dx^2)*(C(i,k+1,j)-2*C(i,k,j)+C(i,k-1,j));
    end
  end
  figure(2);clf; axis([0 1 0 1 -2 12]); meshc(X,Y,C(:,:,j)); 
  %view(-j*0.5 + 50, j*0.5 + 30);
  drawnow;
end
%tarea hacer video de esto
