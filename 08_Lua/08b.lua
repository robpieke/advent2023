local rules = nil
local map = {}
local states = {}

for line in io.lines("input.txt") do
    if not rules then
        rules = line
    elseif line ~= "" then
        local _, _, k, l, r = line:find("(...) = %((...), (...)%)")
        map[k] = { L = l, R = r }
        if k:sub(3, 3) == "A" then
            table.insert(states, k)
        end
    end
end

local z_idx = nil
local cycle_lengths = {}

for i, state in ipairs(states) do
    local moves = 0
    for j=1,2 do
        local idx = nil
        repeat
            moves = moves + 1
            local idx = (moves - 1) % #rules + 1
            state = map[state][rules:sub(idx, idx)]
        until state:sub(3, 3) == "Z"
        z_idx = z_idx or idx
        assert(z_idx == idx, "Assumption invalid")
        if j == 1 then
            table.insert(cycle_lengths, moves)
        else
            assert(cycle_lengths[#cycle_lengths] == moves / 2, "Assumption invalid")
        end
    end    
end

-- Shamelessly copied from https://rosettacode.org/wiki/Least_common_multiple#Lua
function gcd(m, n)
    while n ~= 0 do
        local q = m
        m = n
        n = q % n
    end
    return m
end
function lcm(m, n)
    return (m ~= 0 and n ~= 0) and m * n / gcd(m, n) or 0
end

res = 1
for _, cycle_length in pairs(cycle_lengths) do
    res = lcm(res, cycle_length)
end

print(res)
