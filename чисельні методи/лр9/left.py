import matplotlib.pyplot as plt
import numpy as np
import math

# Функція, яку будемо інтегрувати
def f(x):
    return x**3 * np.exp(-x**2)

# Задаємо діапазон значень x від 0 до 1 з кроком 0.01
x_values = np.arange(0, 1, 0.01)

# Обчислюємо значення функції для кожного x
y_values = f(x_values)

# Розмір кроку для методу правих прямокутників
n = 4
dx = 0.25

# Намалюємо стовпчики для методу правих прямокутників
for i in range(n):
    plt.bar(x_values[i*25], y_values[i*25], width=dx, color='green', edgecolor='black', alpha=0.3, align='edge')

plt.plot(x_values, y_values, label='$x^3 \cdot e^{-x^2}$')
# Додаємо підписи до вісей та заголовок
plt.xlabel('x')
plt.ylabel('y')
plt.title('Метод лівих прямокутників')

# Додаємо легенду
plt.legend()

# Показуємо графік
plt.grid(True)
plt.show()

