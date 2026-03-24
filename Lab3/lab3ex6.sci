
function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    len1 = length(xn);
    len2 = length(hn);
    len = len1 + len2 - 1;
    yn = zeros(1, len);  
    for i = 1:len1
        for j = 1:len2
            yn(i + j - 1) = yn(i + j - 1) + xn(i) * hn(j);
        end
    end
    yorigin = xorigin + horigin - 1;
endfunction

clf();
xn = [8, 5, 2, 3, 4];
xorigin = 3;
hn = [2, 3, 1, 3];  
horigin = 2;

start1 = -xorigin + 1;
ended1 = length(xn) - xorigin;
n1 = start1:ended1;

start2 = -horigin + 1;
ended2 = length(hn) - horigin;
n2 = start2:ended2;

[yn, yorigin] = convolution(xn, xorigin, hn, horigin);
start = -yorigin + 1;
ended = length(yn) - yorigin;
n = start:ended;

subplot(1,3,1);
plot2d3(n1, xn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal x(n)');

subplot(1,3,2);
plot2d3(n2, hn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal h(n)');

subplot(1,3,3);
plot2d3(n, yn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal y(n)');
