function [m] = apro(x, y, n)
    n = n+1;
    k = zeros(n);
    l = zeros(n, 1);
    for i = 1:n
        for j = 1:n
            k(i, j) = sum(x.^(2*n-i-j));
        end
        l(i) = sum(x.^(n-i).*y);
    end
    m = k \ l;
    
end