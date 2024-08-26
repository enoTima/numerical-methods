function [x, k] = iteraciysystem(phi, eps) 
    k = 1;
    x0 = [0.5; 0.5];
    x = phi(x0);
    while k < 100 && norm(x - x0) > eps
        x0 = x;
        x=phi(x0);
        k = k + 1;
    end
end