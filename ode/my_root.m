function [r] = my_root(a, b, c)
%function to find the roots of a second order polynomial equal to roots  
r(1)= (-b + sqrt(b^2 -4*a*c))/2*a;
r(2)= (-b - sqrt(b^2 -4*a*c))/2*a;

end

