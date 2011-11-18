def fib():
    x = 1
    y = 2
    yield x
    yield y
    while 1:
        x, y = y, x + y
        yield y

count = 0
for f in fib():
    if f > 4e6:
        break
    if f % 2 == 0:
        count += f
print count
