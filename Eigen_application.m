B = [2 2 4; 1 3 5; 2 3 4];
disp(B)


[ev, dv] = eig(B)

a = B*ev(:, 1)
disp(a)

b = B*ev(:, 2)
disp(b)

c = B*ev(:, 3)
disp(c)