fprintf("Please input your differential equation\n");
a = input("Please input the first co-efficient");
b = input("Please input the second co-efficient");
c = input("Please input the third co-efficient");

r = my_root(a, b , c);
syms y(x) C1 C2

y = -soln_class(r);
Dy = diff(y,x);
 
[A, B] = equationsToMatrix([y(0), Dy(0)], [C1, C2]);
B = [1 ;2];
X = linsolve(A,B);
disp(X);
y = -subs(y,[C1,C2],[X(1),X(2)]);
disp (y);
