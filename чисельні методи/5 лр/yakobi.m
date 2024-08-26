function [x, k] = yakobi(a, b, eps)

for i = 1:4
    b(i) = b(i) / a(i, i);
    for j = 1:4
        if i ~= j
            a(i, j) = - a(i, j) / a(i, i);
        end
    end
    a(i, i) = 0;
end

x = [0, 0, 0, 0];
k = 0;
x0 = b';
if norm(a, 1) < 1
    if norm(a, 1) > 0.5
        eps = (1 - norm(a, 1))/norm(a, 1) * eps;
    end
    while(norm(x0 - x) > eps && k < 100)
        x0 = x;
        k = k+1;
        for i = 1:4
                x(i) = dot(x0, a(i, :)) + b(i);
        end
        
    end

end
end