function matr = generateMatr(n)

a = ones(1, n-1);
b = (1:n).^2;
c = ones(1, n-1);

matr = zeros(n);
matr(1, 1:2) = [b(1), c(1)];

for i = 2:n-1
    matr(i, i-1:i+1) = [a(i-1), b(i), c(i)];
end

matr(end, end-1:end) = [a(end), b(end)];

end
