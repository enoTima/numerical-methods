import scipy.integrate as integrate
import numpy as np

def f(x):
    return (np.log(x + 1) / x) * np.exp(-x)

a = 0
b = 1
integral_value = integrate.quad(f, a, b)

print(f"Значення інтеграла: {integral_value[0]}")
