figure(1)
x=0:0.001:10;
y=2*exp(-x) - sin(x);
z=x.^7 - x - 1;
plot(x,y,'b',x,z,'b--'),grid on
figure(2)
x = -10:0.01:10;
 y = x.^3 - x - 1;
 plot(x,y,'r'),grid on
 