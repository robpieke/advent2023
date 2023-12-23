// R=0, D=1, L=2, U=3
def step = new Tuple(
    new Tuple(+1, 0),
    new Tuple( 0,+1),
    new Tuple(-1, 0),
    new Tuple( 0,-1),
)
def nextDir = [
    new Tuple('-', 0): 0, new Tuple('-', 2): 2,
    new Tuple('|', 1): 1, new Tuple('|', 3): 3,
    new Tuple('F', 2): 1, new Tuple('F', 3): 0,
    new Tuple('7', 0): 1, new Tuple('7', 3): 2,
    new Tuple('L', 1): 0, new Tuple('L', 2): 3,
    new Tuple('J', 0): 3, new Tuple('J', 1): 2
]

File f = new File('input.txt')
def lines = f.readLines()

def x = new int[2], y = new int[2]
lines.eachWithIndex { line, i ->
    if (line.indexOf('S') != -1) {
        x[0] = x[1] = line.indexOf('S')
        y[0] = y[1] = i
    }
}

def d = new int[2]
def idx = 0
if (nextDir.containsKey(new Tuple(lines[y[0]][x[0]+1], 0))) { d[idx++] = 0 }
if (nextDir.containsKey(new Tuple(lines[y[0]+1][x[0]], 1))) { d[idx++] = 1 }
if (nextDir.containsKey(new Tuple(lines[y[0]][x[0]-1], 2))) { d[idx++] = 2 }
if (nextDir.containsKey(new Tuple(lines[y[0]-1][x[0]], 3))) { d[idx++] = 3 }

def moves = 0
def seen = [] as Set
while (true) {
    def found = false
    for (i in 0..<2) {
        def delta = step[d[i]]
        x[i] += delta[0]
        y[i] += delta[1]
        if (new Tuple(x[i], y[i]) in seen) {
            found = true
            break
        }
        d[i] = nextDir[new Tuple(lines[y[i]][x[i]], d[i])]
        seen << new Tuple(x[i], y[i])
        if (i == 0) { moves++ }
    }
    if (found) break;
}

println "$moves"
