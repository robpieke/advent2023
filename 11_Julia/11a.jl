# -- From https://www.assertnotmagic.com/2019/05/17/julia-read-grid/
lines = map(collect, readlines("input.txt"))
grid = permutedims(hcat(lines...))
# --

costs = [map(v -> 2 - ('#' in v), eachrow(grid)),
         map(v -> 2 - ('#' in v), eachcol(grid))]

stars = findall(c -> c == '#', grid)
dist = 0
for s1 in stars
    for s2 in stars
        s1 < s2 || continue
        for dim in 1:2
            p = minmax(s1[dim], s2[dim])
            p[1] != p[2] || continue
            global dist += mapreduce(i -> costs[dim][i], +, p[1]:(p[2]-1))
        end
    end
end

println(dist)
