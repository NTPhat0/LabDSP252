x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];
y = conv(x,h);

Lx= length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

n_x = 0:Lx-1;
n_y = 0:Ly-1;

e_x = sum(x.^2);
e_y = sum(y.^2);

clf()
subplot(1,3,1);
plot2d3(n_x, x, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal x(n)');

subplot(1,3,2);
plot2d3(n_y, y, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal y(n)');

subplot(1,3,3);
e = [e_x, e_y];
bar([0, 1], e, 0.5, 'stacked');
a = gca();  // Get current axes handle
a.x_ticks = tlist(['ticks', 'locations', 'labels'], [0, 1], ['x(n)', 'y(n)']);
xtitle('energy of x(n) and y(n)');
