function [soln] = soln_class(r)
%Determines the nature of the roots and solves for general solution
syms y(x) C1 C2
if isreal(r)
    if r(1) == r(2)
        soln = y == C1*exp(x*r(1)) + C2*x* exp(x*r(2));
    else
        soln = y == C1*exp(x*r(1)) + C2* exp(x*r(2));
        
    end
else
    soln = y == C1*exp(real(r(1))*x)*cos(imag(r(1))*x) +...
        C2*exp(real(r(1))*x)*sin(imag(r(1))*x);
    

end

