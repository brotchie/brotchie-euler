from operator import mul

included = []
for i in range(20, 1, -1):
    if not [x for x in included if x % i == 0]:
        included.append(i)
included.sort()

def isdivisible(x):
    for i in included:
        if x % i:
            return False
    return True

i = 20
while not isdivisible(i):
    i += 20
print i

