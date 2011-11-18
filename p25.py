def fib():
    x = 1
    y = 1
    yield x
    yield y
    while 1:
        x, y = y, x + y
        yield y


for i, f in enumerate(fib()):
    if len(str(f)) >= 1000:
        break
print f
print i+1
