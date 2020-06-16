function [A,B,Q,x,y,h]=heatssfd2d(c,N,nodesa)
dx=1/N;
[x,y]=ndgrid(dx:dx:1-dx);
x=x(:);
y=y(:);
[~,~,A] = laplacian([N-1 N-1],{'DD' 'DD'});
h=1/N^2;
A=-c*full(A)/h;
%difu=(1-max(sin(9*pi*x),0)).*(x<0.5)+0.01;
%A=diag(difu)*A;
B=nodesa;
Q=h*eye((N-1)^2);