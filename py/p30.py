def isdigpow(x, p):
    return x == sum(int(k)**p for k in str(x))

pows = []
for i in range(2, 2e5):
    if isdigpow(i, 5):
        pows.append(i)
print sum(pows)
