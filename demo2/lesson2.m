format long 
f1 = inline('x^3-1');
f2 = inline ('(x+1)^(1/3)');
[x_star,index,it1]= steffensen(f1,1.5)
[y_star,index,it2]=steffensen(f2,1.5)
