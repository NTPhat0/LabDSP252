function [yn, yorigin] = flip1(xn, xorigin)
    len = length(xn);
    x = zeros(1, len);
    for i = 1:len
        x(i) = xn(len-i+1);
    end
    yn= x;
    yorigin = len - xorigin + 1
endfunction

clf();
xn = [1,  -2,  3,  6];
xorigin = 3;
d = 1;

start = -xorigin + 1;
ended = length(xn) - xorigin;
n1 = start:ended;

[yn, yorigin] = flip1(xn, xorigin);
start = -yorigin + 1;
ended = length(yn) - yorigin;
n2 = start:ended;

subplot(1,2,1);
plot2d3(n1, xn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal x(n)');

subplot(1,2,2);
plot2d3(n2, yn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal y(n)');
