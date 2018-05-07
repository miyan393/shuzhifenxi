format long
y0 = log(6/5);
y(1)=1 - 5*y0;
for n = 2:50
    y(n)=1/n -5*y(n-1);
end 