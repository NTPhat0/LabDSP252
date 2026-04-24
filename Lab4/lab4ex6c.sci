x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

Lx= length(x);
Lh = length(h);
Ly = Lx + Lh - 1;

H = zeros(Ly, Lx);
for i = 1:Ly
    for j = 1:Lx
        k = i - j;
        if (k >= 0 & k < Lh) then
            H(i, j) = h(k+1);
        end
    end
end

y = H * x';
disp("Matrix");
disp(H);
disp('Convolution y(n) using matrix:');
disp(y');
