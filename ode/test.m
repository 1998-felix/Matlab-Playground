function [soln] = test (a ,b, c,y_0,y_1)
syms y(x)
func=  a*diff(y,x,2) == -b*diff(y,x)-c*y;
Dy = diff(y,x);
cond = [y(0)==y_0, Dy(0) == y_1];
soln = dsolve(func,cond);

end

