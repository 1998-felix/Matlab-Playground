syms y(x)
func=  diff(y,x,2) == 2*diff(y,x)-10*y;
Dy = diff(y,x);
cond = [y(0)==1, Dy(0) == 2];
soln = dsolve(func,cond)

