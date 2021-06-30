syms y(t) a
eqn = 5 * diff(y,t) == y;
S = dsolve(eqn)