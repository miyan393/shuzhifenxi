function [x_star,index,it] = steffensen(phi,x,ep,it_max)
if nargin < 4 it_max =100;end
if nargin <3 ep = 1e-5;end
index = 0; k= 1;
while k <=it_max
	x1 =x; y =feval(phi,x);z = feval(phi,y);
    x = x- (y-x)^2/(z - 2*y +x);
	if abs(x-x1)< ep
		index = 1;break;
	end
	k= k+1;
end
x_star = x ;it =k;