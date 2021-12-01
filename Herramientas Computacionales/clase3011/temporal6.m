clear all; close all;
h = 0.02; tf= 0.5; N = ceil(tf/h);
p1 = 10; p2 = 8/3; p3 = 28;
x0 = 1.001; v0 = 1.001; w0 = 1.001; y0 = [x0 v0 w0]';
dynamicsLorenz = @(t,y) fmotionLorenz(t,y,p1,p2,p3);
y_out = zeros(N,3); t = zeros(N,1); y_out(1,:) = y0';
for i = 1:N
  [t(i+1), y_out(i+1,:)] = int_rk4(h, dynamicsLorenz, t(i), y_out(i,:)');
  figure(1); clf;
  x1(i) = y_out(i+1, 1,:); y1(i) = y_out(i+1, 2,:); w1(i) = y_out(i+1, 3,:);
  plot3(x1,y1,w1,'-bo',...
  'linewidth',2,...
  'MarkerEdgeColor','k',...
  'MarkerFaceColor',[.49 1 0.63],...
  'MarkerSize',3);grid on; axis off; view(i*pi/20,i*pi/10);drawnow;
 % Impresion cadena
  fnombre = strcat('Lorenz',num2str(t(i),'%0.2i'),'.jpeg') 
  eval(['print -djpeg ' fnombre ' -r100'])
end