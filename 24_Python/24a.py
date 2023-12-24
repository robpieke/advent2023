x = []
y = []
vx = []
vy = []
with open('input.txt', 'r') as f:
    for line in f.readlines():
        p, v = line.strip().split('@')
        p = [int(n) for n in p.split(',')]
        v = [int(n) for n in v.split(',')]
        x.append(p[0])
        y.append(p[1])
        vx.append(v[0])
        vy.append(v[1])

total = 0

for i in range(0, len(x) - 1):
    for j in range(i+1, len(x)):
        denom = vx[i]*vy[j] - vx[j]*vy[i]
        if denom == 0:
            continue
        t1 = (vx[j]*(y[i]-y[j]) - vy[j]*(x[i]-x[j])) / denom
        t2 = (vx[i]*(y[j]-y[i]) - vy[i]*(x[j]-x[i])) / -denom
        if t1 < 0 or t2 < 0:
            continue
        _x = x[i] + vx[i] * t1
        _y = y[i] + vy[i] * t1
        if _x >= 200000000000000 and _x <= 400000000000000 and \
           _y >= 200000000000000 and _y <= 400000000000000:
            total += 1

print(total)
