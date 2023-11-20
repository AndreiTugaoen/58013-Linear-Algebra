%Find the solution to the problem stated and plot your equations and save
%it to your Github

%Day 1: 
%Apples = 20
%Oranges = 10
%Total = 350 pesos

%Day 2:
%Apples = 17
%Oranges = 22
%Total = 500 pesos

syms A O;
eq1 = 20 * A + 10 * O == 350;
eq2 = 17 * A + 22 * O == 500;
[A, B] = equationsToMatrix([eq1, eq2], [A, O]);
solution = linsolve(A, B);
Apple = solution(1);
Orange = solution(2);

fprintf('The price of one apple is: %.2f pesos\n', Apple);
fprintf('The price of one orange is: %.2f pesos\n', Orange);


x = 0:0.1:30;
y1 = (350 - 20 * x) / 10;
y2 = (500 - 17 * x) / 22;


plot(x, y1, 'b-', 'LineWidth', 2, 'DisplayName', '20A + 10O = 350');
hold on;
plot(x, y2, 'g-', 'LineWidth', 2, 'DisplayName', '17A + 22O = 500');
scatter(Apple, Orange, 100, 'r', 'filled', 'DisplayName', 'Solution');

xlabel('x-axis');
ylabel('y-axis');
title('Linear Application');
legend('show');
grid on;


