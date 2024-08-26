function [N] = Newton(x, y)
    n = length(x); 

    delta = zeros(n, n);
    delta(:, 1) = y';

    for j = 2:n
        for i = 1:n-j+1
            delta(i, j) = (delta(i+1, j-1) - delta(i, j-1)) / (x(i+j-1) - x(i));
        end
    end

    a = delta(1, :);

    N = zeros(size(x));

    for i = 1:n
        t = 1;
        for j = 1:i-1
            t = conv(t, poly(x(j)));
        end
        t = t .* a(i);
        t = [zeros(1, n - length(t)), t];
        N = N + t;
    end
end