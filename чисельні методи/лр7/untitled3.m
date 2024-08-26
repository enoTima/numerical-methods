function [phi, delta, omega] = untitled3(x, y, m)
    phi = polyval(m, x);
    delta = abs(y-phi);
    q = size(x);
    omega = sum(delta.^2)./q(2);
end