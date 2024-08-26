import math

x =[]
for i in range(4):
    x.append((i+0.5)*0.25)

y = []
for i in x:
    y.append(math.log(i+1, math.exp(1))/i*math.exp(-i))

print(x)
print(y)
print(sum(y)/4)