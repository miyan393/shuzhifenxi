function yi =Lagrange(x,y,xi)
n = length(x);
p = zeros(1,n);
for k = 1 :n
    t = ones(1,n);
    for j = 1:n
        if j~=k
         if abs(x(k) - x(j)) < eps
            error('the date is erroe!');
            return;
         end
        t(j) = (xi -x(j))/(x(k)-x(j));
        end
        end
p(k) = prod(t);
end
yi = sum(y .* p);
