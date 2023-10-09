syms x1 x2 x3 
eq1 = 3*x1 - 9*x3 ==33;
eq2 = 7*x1 - x2 - x3 ==-15;
eq3 = 4*x1 + 6*x2 + 5*x3 == -6;
sol = solve([eq1 , eq2, eq3], [x1, x2, x3]);
x1_sol = sol.x1;
x2_sol = sol.x2;
x3_sol = sol.x3;
