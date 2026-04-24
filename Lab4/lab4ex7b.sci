x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

Lx= length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

y = zeros(1, Ly);
h_folded = [h($:-1:1)];

for n = 0:Ly-1
    sum = 0;
    for k = 0:Lx-1
        idx_h = n - k;  
        if (idx_h >= 0 & idx_h < Lh) then
            sum = sum + h(idx_h+1) * x(k+1);
        end
    end
    y(n+1) = sum;
end

disp('Convolution y(n) using folding and shifting:');
disp(y);


