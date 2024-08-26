function x = gauss(a)

[rows, cols] = size(a);
cols = cols - 1;

for i = 1:rows-1
    for j = i+1:rows
        a(j, :) = a(j, :) - (a(j, i) / a(i, i)) * a(i, :);
    end
end

x = zeros(1, cols);

for i = rows:-1:1
    x(i) = a(i, end);
    for j = i+1:rows
        x(i) = x(i) - a(i, j) * x(j);
    end
    x(i) = x(i) / a(i, i);
end

end
