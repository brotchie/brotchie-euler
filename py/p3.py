from math import sqrt

def gcd(x, y):
    while x and y:
        if x > y:
            x = x - y
        else:
            y = y - x
    return x or y

def isperfectsquare(x):
    return int(sqrt(x))**2 == x

N = 600851475143

def findfactor(N):
    for i in xrange(int(sqrt(N))+1, N):
        j = i**2 % N
        if isperfectsquare(j):
            cf = gcd(i - int(sqrt(j)), N)
            return cf
    return 1

factors = set([N])

while 1:
    improved = set()
    for p in factors:
        cf = findfactor(p)
        improved.add(cf)
        improved.add(p / cf)

    if improved == factors:
        break
    else:
        factors = improved

improved = list(improved)
improved.sort()
print improved
