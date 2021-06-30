% input commands to obtain variables = Tr
start = true;
fprintf("Program to solve equations of the form ay'' + by' + cy = 0 \n");
while start
    fprintf("Please input your differential equation \n");
    a = input("Please input the first co-efficient, a :");
    b = input("Please input the second co-efficient, b :");
    c = input("Please input the third co-efficient, c :");
    y_0 = input("Please input the first initial condition, y(o) :");
    y_1 = input("Please input the second initial condition, y'(o) :");
    fprintf("The equation you have entered is %d y'' + %dy' + %d y == 0\n" , a ,b ,c);
    state = input("Press one to continue:");
    if state == 1
        start = false;
    else
        start=true;
    end
      
end

r = my_root(a, b , c);
syms y(x) C1 C2

y = -soln_class(r);
Dy = diff(y,x);
 
[A] = equationsToMatrix([y(0), Dy(0)], [C1, C2]);
B = [y_0 ; y_1];
X = linsolve(A,B);
y = -subs(y,[C1,C2],[X(1),X(2)]);
fprintf("The particular solution to the equation is :\n");
disp ((y));
fprintf("The solution from dsolve is :\ny(x) == ");
disp(test(a,b,c,y_0,y_1));
