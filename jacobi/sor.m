%sor.m
function [x,n,s] = jacobi(a,b,w,x0)
m =length(b);
if nargin <4 x0 =zeros(m,1);end
if nargin <3 w =1;end

D=diag(diag(a));
L = -tril(a,-1);
U = -triu(a,1);
B=(D-w*L)\(w*U+(1-w)*D);f = (D-w*L)\(w*b); s= vrho(B);
x =B*x0 +f; n=1;
while norm(x -x0) >= 1.0e-6
    x0 = x;
    x = B*x0+f; n = n+1;
end 