function L = Lagrange(x, y)
    n = length(x);

    L = zeros(1, n);

    for i = 1:n
        l_i = 1;
        for j = 1:n
            if j ~= i
                l_i = conv(l_i, poly(x(j))) / (x(i) - x(j));
            end
        end
        
        L = L + y(i) * l_i;
    end
end
