clear all; close all;
x = 0:0.05:10; 
y = 4*exp(2*x); 
figure(1);clf;
%%%%%%%%%%%%%%%%%%%%%%%%  
subplot(2,2,1)
plot(x,y,'-b');grid on;
xlabel('x');ylabel('y');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
semilogy(x,y,'-b');grid on;
xlabel('x');ylabel('log(y)');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
semilogx(x,y,'-b');grid on;
xlabel('log(x)');
ylabel('y');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
loglog(x,y,'-b');grid on;
xlabel('log(x)');ylabel('log(y)');
print -djpeg -r100 Ejes_func2.jpeg