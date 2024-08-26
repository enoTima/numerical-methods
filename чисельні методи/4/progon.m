function x = progon(n)

a = ones(1, n);
c = ones(1, n);
b = (1:n).^2;
d = (1:n)*2;

x = zeros(1, n);
alpha = zeros(1, n);
beta = zeros(1, n);

alpha(1) = - c(1) / b(1);
beta(1) = d(1) / b(1);

for i=2:n
    alpha(i) = - c(i) / (b(i) + a(i) * alpha(i-1));
    beta(i) = (d(i) - a(i) * beta(i-1)) / (b(i) + a(i) * alpha(i-1));
end

x(n) = beta(n);

for i=n-1:-1:1
    x(i) = alpha(i) * x(i+1) + beta(i);
end

end
