function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    len1 = length(x1n);
    len2 = length(x2n);
    
    start1 = -x1origin + 1;
    ended1 = len1 - x1origin;
    n1 = start1:ended1;
    
    start2 = -x2origin + 1;
    ended2 = len2 - x2origin;
    n2 = start2:ended2;
    
    A = [start1, ended1, start2, ended2];
    start = min(A);
    ended = max(A);
    
    n = start:ended;
    len = length(n);
    
    x = zeros(1, len);
    for i = 1:len
        v1 = 0;
        v2 = 0;
        if (n(i) >= start1) & (n(i) <= ended1) then 
            idx = n(i) - start1 + 1;
            v1 = x1n(idx);
        end
        if (n(i) >= start2) & (n(i) <= ended2) then 
            idx = n(i) - start2 + 1;
            v2 = x2n(idx);
        end
        x(i) = v1 * v2;
    end
    yn= x;
    yorigin = max([x1origin,x2origin]);
endfunction

clf();
x1n = [2, 3, 4];
x1origin = 2;
x2n = [-1, 4, -5, 8];  
x2origin = 1;

start1 = -x1origin + 1;
ended1 = length(x1n) - x1origin;
n1 = start1:ended1;

start2 = -x2origin + 1;
ended2 = length(x2n) - x2origin;
n2 = start2:ended2;

[yn, yorigin] = add(x1n, x1origin, x2n, x2origin);
start = -yorigin + 1;
ended = length(yn) - yorigin;
n = start:ended;

subplot(1,3,1);
plot2d3(n1, x1n, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal x1(n)');

subplot(1,3,2);
plot2d3(n2, x2n, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal x2(n)');

subplot(1,3,3);
plot2d3(n, yn, style=5);
a = gca();
a.x_location = "origin"
a.y_location = "origin"
xtitle('signal y(n)');
