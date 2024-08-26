function [x, k] = newtonsystem(f, fn, eps) 
    k = 0;
    x0 = [1; 1];
    x = [0.5; 0.5];
    while k < 100 && norm(x - x0) > eps
        x0 = x;
        x = x - fn(x)*f(x);
        k = k + 1;
    end
end