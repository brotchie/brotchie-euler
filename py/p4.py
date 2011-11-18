def ispalindrome(x):
    s = str(x)
    if len(s) % 2:
        return s[0:len(s)//2] == s[-1:-len(s)//2:-1]
    else:
        return s[0:len(s)//2] == s[-1:-len(s)//2-1:-1]

palin = set()
for i in range(999, 0, -1):
    for j in range(999, 0, -1):
        if ispalindrome(i*j):
            palin.add(i*j)
print max(palin)
