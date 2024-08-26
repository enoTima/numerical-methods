import matplotlib.pyplot as plt
import numpy as np
import math

# Задаємо діапазон значень x від 0 до 1 з кроком 0.01
x_values = np.arange(0.01, 1, 0.01)

# Обчислюємо значення функції для кожного x
y_values = x_values**3 * np.exp(-x_values**2)

# Намалюємо графік
plt.plot(x_values, y_values, label='$x^3 \cdot e^{-x^2}$')

# Додаємо підписи до вісей та заголовок
plt.xlabel('x')
plt.ylabel('y')
plt.title('Графік функції $x^3 \cdot e^{-x^2}$')

# Додаємо легенду
plt.legend()

# Показуємо графік
plt.grid(True)
plt.show()