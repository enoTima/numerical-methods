import matplotlib.pyplot as plt
import numpy as np

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
for i in range(0, 100, 25):
    plt.fill_between([x_values[i], x_values[i + 24]], [y_values[i], y_values[i + 24]], color='green', alpha = 0.3)
    plt.plot([x_values[i], x_values[i + 24]], [y_values[i], y_values[i + 24]], 'g')

plt.plot(x_values, y_values, label='$x^3 \cdot e^{-x^2}$')
# Додаємо підписи до вісей та заголовок
plt.xlabel('x')
plt.ylabel('y')
plt.title('Метод трапецій')

# Додаємо легенду
plt.legend()

# Показуємо графік
plt.grid(True)
plt.show()

